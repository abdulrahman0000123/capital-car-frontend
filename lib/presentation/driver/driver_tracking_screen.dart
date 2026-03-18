import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_car_app/providers/location_provider.dart';

// Note: Requires SignalR Service connection which is pending in phase 1 integration
class DriverTrackingScreen extends ConsumerStatefulWidget {
  const DriverTrackingScreen({super.key});

  @override
  ConsumerState<DriverTrackingScreen> createState() => _DriverTrackingScreenState();
}

class _DriverTrackingScreenState extends ConsumerState<DriverTrackingScreen> {
  bool _isTracking = false;
  StreamSubscription<Position>? _positionStreamSubscription;
  Position? _currentPosition;

  @override
  void dispose() {
    _positionStreamSubscription?.cancel();
    super.dispose();
  }

  Future<void> _startTracking() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('خدمات الموقع غير مفعلة في الجهاز')),
      );
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return;
    }

    setState(() {
      _isTracking = true;
    });

    const locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 10,
    );

    _positionStreamSubscription = Geolocator.getPositionStream(
      locationSettings: locationSettings,
    ).listen((Position? position) {
      if (position != null) {
        setState(() {
          _currentPosition = position;
        });
        
        ref.read(locationSenderProvider).updateDriverLocation(
          position.latitude,
          position.longitude,
        );
      }
    });

  }

  void _stopTracking() {
    _positionStreamSubscription?.cancel();
    setState(() {
      _isTracking = false;
      _currentPosition = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('لوحة تحكم السائق - التتبع'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.directions_bus,
              size: 100,
              color: Colors.blueAccent,
            ),
            const SizedBox(height: 30),
            Text(
              _isTracking ? 'جاري بث الموقع الحي...' : 'التتبع متوقف',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _isTracking ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            if (_currentPosition != null)
              Text(
                'إحداثيات: ${_currentPosition!.latitude.toStringAsFixed(4)}, ${_currentPosition!.longitude.toStringAsFixed(4)}',
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _isTracking ? _stopTracking : _startTracking,
              icon: Icon(_isTracking ? Icons.stop : Icons.play_arrow),
              label: Text(
                _isTracking ? 'إنهاء الرحلة' : 'بدء الرحلة (تفعيل GPS)',
                style: const TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _isTracking ? Colors.red : Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

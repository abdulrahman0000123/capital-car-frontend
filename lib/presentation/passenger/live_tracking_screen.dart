import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LiveTrackingScreen extends ConsumerStatefulWidget {
  const LiveTrackingScreen({super.key});

  @override
  ConsumerState<LiveTrackingScreen> createState() => _LiveTrackingScreenState();
}

class _LiveTrackingScreenState extends ConsumerState<LiveTrackingScreen> {
  final MapController _mapController = MapController();
  LatLng _carLocation = const LatLng(30.0444, 31.2357); // Cairo default
  bool _isCarMoving = false; // Will be driven by SignalR state
  
  @override
  void initState() {
    super.initState();
    // TODO: Connect to LocationHub and listen for "LocationUpdated" events
    // _signalRService.on("LocationUpdated", (arguments) {
    //    final double lat = arguments[0];
    //    final double lng = arguments[1];
    //    setState(() {
    //       _carLocation = LatLng(lat, lng);
    //       _isCarMoving = true;
    //       _mapController.move(_carLocation, 15.0);
    //    });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التتبع المباشر للسيارة'),
        centerTitle: true,
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          initialCenter: _carLocation,
          initialZoom: 15.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.capitalcar.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: _carLocation,
                width: 60,
                height: 60,
                child: const Icon(
                  Icons.airport_shuttle,
                  size: 40,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _mapController.move(_carLocation, 15.0);
        },
        child: const Icon(Icons.my_location),
      ),
    );
  }
}

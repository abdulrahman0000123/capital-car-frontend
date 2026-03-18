import 'dart:async';
import 'package:signalr_netcore/signalr_client.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:capital_car_app/core/constants/app_constants.dart';

class LocationRepository {
  late HubConnection _hubConnection;
  final FlutterSecureStorage _storage;

  final _locationController =
      StreamController<Map<String, dynamic>>.broadcast();
  Stream<Map<String, dynamic>> get locationStream => _locationController.stream;

  LocationRepository() : _storage = const FlutterSecureStorage() {
    _initSignalR();
  }

  Future<void> _initSignalR() async {
    final token = await _storage.read(key: AppConstants.keyToken);

    _hubConnection = HubConnectionBuilder()
        .withUrl("http://capital-car-app-backend.runasp.net/hubs/location",
            options: HttpConnectionOptions(
              accessTokenFactory: () async => token ?? '',
            ))
        .withAutomaticReconnect()
        .build();

    _hubConnection.on("ReceiveLocationUpdate", _handleLocationUpdate);

    try {
      if (_hubConnection.state == HubConnectionState.Disconnected) {
        await _hubConnection.start();
        print("SignalR Connected for Location Tracking");
      }
    } catch (e) {
      print("Error connecting to LocationHub: $e");
    }
  }

  void _handleLocationUpdate(List<dynamic>? arguments) {
    if (arguments != null && arguments.length >= 2) {
      final double lat = arguments[0] as double;
      final double lng = arguments[1] as double;
      _locationController.add({'latitude': lat, 'longitude': lng});
    }
  }

  Future<void> sendLocationUpdate(double latitude, double longitude) async {
    try {
      if (_hubConnection.state != HubConnectionState.Connected) {
        await _initSignalR();
      }
      await _hubConnection
          .invoke("UpdateLocation", args: <Object>[latitude, longitude]);
    } catch (e) {
      print("Failed to send location: $e");
    }
  }

  void dispose() {
    _hubConnection.stop();
    _locationController.close();
  }
}

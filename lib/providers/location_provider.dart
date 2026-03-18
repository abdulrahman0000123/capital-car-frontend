import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_car_app/data/repositories/location_repository.dart';

final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  final repository = LocationRepository();
  ref.onDispose(() => repository.dispose());
  return repository;
});

// Stream provider for tracking live location from the SignalR connection
final liveLocationStreamProvider = StreamProvider<Map<String, dynamic>>((ref) {
  final repository = ref.watch(locationRepositoryProvider);
  return repository.locationStream;
});

// StateNotifier to explicitly send location
final locationSenderProvider = Provider<LocationSender>((ref) {
  final repository = ref.watch(locationRepositoryProvider);
  return LocationSender(repository);
});

class LocationSender {
  final LocationRepository _repository;

  LocationSender(this._repository);

  Future<void> updateDriverLocation(double lat, double lng) async {
    await _repository.sendLocationUpdate(lat, lng);
  }
}

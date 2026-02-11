import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:capital_car_app/data/models/auth_response_model.dart';
import 'package:capital_car_app/core/constants/app_constants.dart';

// Auth State Provider
final authStateProvider = Provider<AsyncValue<UserData?>>((ref) {
  return ref.watch(authNotifierProvider);
});

// Auth Notifier Provider
final authNotifierProvider = StateNotifierProvider<AuthNotifier, AsyncValue<UserData?>>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<AsyncValue<UserData?>> {
  AuthNotifier() : super(const AsyncValue.loading()) {
    _checkAuthStatus();
  }

  final _storage = const FlutterSecureStorage();

  Future<void> _checkAuthStatus() async {
    try {
      final token = await _storage.read(key: AppConstants.keyToken);
      if (token != null) {
        // TODO: Verify token with backend or decode JWT
        // For now, return mock user data if token exists
        final username = await _storage.read(key: AppConstants.keyUsername);
        final role = await _storage.read(key: AppConstants.keyUserRole);
        
        final userData = UserData(
          id: '1',
          username: username ?? 'user',
          email: 'user@example.com',
          role: role ?? 'passenger',
          status: 'active',
        );
        
        state = AsyncValue.data(userData);
      } else {
        state = const AsyncValue.data(null);
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> login(String username, String password) async {
    state = const AsyncValue.loading();
    try {
      // TODO: Call login API
      // final response = await authRepository.login(username, password);
      
      // For now, mock response
      await Future.delayed(const Duration(seconds: 1));
      
      // Determine role based on username (admin or passenger)
      final role = username.toLowerCase() == 'admin' ? 'admin' : 'passenger';
      
      // Save token and user info
      await _storage.write(key: AppConstants.keyToken, value: 'mock_token');
      await _storage.write(key: AppConstants.keyRefreshToken, value: 'mock_refresh_token');
      await _storage.write(key: AppConstants.keyUsername, value: username);
      await _storage.write(key: AppConstants.keyUserRole, value: role);
      
      // Mock user data
      final userData = UserData(
        id: '1',
        username: username,
        email: 'user@example.com',
        role: role,
        status: 'active',
      );
      
      state = AsyncValue.data(userData);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      rethrow;
    }
  }

  Future<void> logout() async {
    await _storage.delete(key: AppConstants.keyToken);
    await _storage.delete(key: AppConstants.keyRefreshToken);
    state = const AsyncValue.data(null);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: AppConstants.keyToken);
  }
}

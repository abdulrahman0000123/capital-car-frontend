import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:capital_car_app/core/constants/app_constants.dart';

class VotingRepository {
  final Dio _dio;
  final FlutterSecureStorage _storage;

  VotingRepository() 
      : _dio = Dio(BaseOptions(
          baseUrl: 'http://capital-car-app-backend.runasp.net/api/', // Change to environment variable if available
          connectTimeout: const Duration(seconds: 10),
        )),
        _storage = const FlutterSecureStorage() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await _storage.read(key: AppConstants.keyToken);
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ));
  }

  Future<void> submitVote(String passengerId, DateTime targetDate, bool isGoing) async {
    try {
      await _dio.post('votes', data: {
        'passengerId': passengerId,
        'targetDate': targetDate.toIso8601String(),
        'isGoing': isGoing,
      });
    } on DioException catch (e) {
      throw Exception('Failed to submit vote: ${e.message}');
    }
  }

  Future<List<dynamic>> getPassengerVotes(String passengerId, DateTime startDate, DateTime endDate) async {
    try {
      final response = await _dio.get('votes/$passengerId', queryParameters: {
        'startDate': startDate.toIso8601String(),
        'endDate': endDate.toIso8601String(),
      });
      return response.data as List<dynamic>;
    } on DioException catch (e) {
      throw Exception('Failed to fetch votes: ${e.message}');
    }
  }
}

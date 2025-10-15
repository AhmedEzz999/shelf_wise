import 'package:dio/dio.dart';

class ApiService {
  ApiService({required Dio dio}) : _dio = dio;
  final String _baseUrl = 'https://www.googleapis.com/';
  final Dio _dio;

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    final response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}

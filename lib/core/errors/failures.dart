import 'package:dio/dio.dart';

abstract class Failures {
  Failures({required this.errorMessage});

  final String errorMessage;
}

class ServiceFailures extends Failures {
  ServiceFailures({required super.errorMessage});

  factory ServiceFailures.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionError:
        return ServiceFailures(
          errorMessage: 'No internet connection or server unreachable',
        );

      case DioExceptionType.connectionTimeout:
        return ServiceFailures(
          errorMessage: 'Connection timeout with API server',
        );

      case DioExceptionType.sendTimeout:
        return ServiceFailures(errorMessage: 'Send timeout to API server');

      case DioExceptionType.receiveTimeout:
        return ServiceFailures(errorMessage: 'Receive timeout from API server');

      case DioExceptionType.badCertificate:
        return ServiceFailures(errorMessage: 'Bad SSL certificate');

      case DioExceptionType.badResponse:
        return ServiceFailures.fromResponse(
          statusCode: dioException.response!.statusCode!,
          response: dioException.response!.data,
        );

      case DioExceptionType.cancel:
        return ServiceFailures(
          errorMessage: 'Request to API server was cancelled',
        );

      case DioExceptionType.unknown:
        return ServiceFailures(
          errorMessage: 'Unexpected error: ${dioException.message}',
        );
    }
  }

  factory ServiceFailures.fromResponse({
    required int statusCode,
    required dynamic response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailures(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailures(
        errorMessage: 'Your request is not found, try again later.',
      );
    } else if (statusCode >= 500) {
      return ServiceFailures(
        errorMessage: 'Internal server error, try again later.',
      );
    } else {
      return ServiceFailures(
        errorMessage: 'There is an error, try again later.',
      );
    }
  }
}

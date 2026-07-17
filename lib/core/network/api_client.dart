import 'package:dio/dio.dart';

import '../errors/exceptions.dart';
import '../utils/app_logger.dart';
import 'api_endpoints.dart';

/// Thin wrapper around [Dio] shared by every remote data source.
///
/// Centralizes base configuration, auth injection, logging, and low-level
/// error translation so individual data sources stay focused on mapping
/// JSON to models rather than handling HTTP plumbing.
class ApiClient {
  ApiClient({Dio? dio}) : _dio = dio ?? _buildDio();

  final Dio _dio;

  static Dio _buildDio() {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        queryParameters: <String, dynamic>{
          if (ApiEndpoints.apiKey.isNotEmpty) 'api_key': ApiEndpoints.apiKey,
        },
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          AppLogger.d('➡️ ${options.method} ${options.uri}');
          handler.next(options);
        },
        onResponse: (Response<dynamic> response, ResponseInterceptorHandler handler) {
          AppLogger.d('✅ ${response.statusCode} ${response.requestOptions.uri}');
          handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          AppLogger.e('❌ ${error.requestOptions.uri} → ${error.message}');
          handler.next(error);
        },
      ),
    );

    return dio;
  }

  Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await _dio.get<dynamic>(path, queryParameters: queryParameters);
    } on DioException catch (error) {
      throw _mapDioException(error);
    }
  }

  Exception _mapDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutException();
      case DioExceptionType.connectionError:
        return const NetworkException();
      case DioExceptionType.badResponse:
        final int? status = error.response?.statusCode;
        if (status == 404) {
          return const NotFoundException();
        }
        return ServerException(
          error.response?.data is Map<String, dynamic>
              ? (error.response?.data['status_message'] as String? ??
                  'Server error occurred.')
              : 'Server error occurred.',
        );
      case DioExceptionType.cancel:
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        return const ServerException();
      case DioExceptionType.transformTimeout:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }
}

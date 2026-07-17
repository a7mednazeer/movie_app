/// Data-layer exceptions.
///
/// Remote/local data sources throw these; repositories catch them and map
/// each one to the matching [Failure] (see `failures.dart`) before handing
/// control back to the domain/presentation layers.
class ServerException implements Exception {
  const ServerException([this.message = 'Server error occurred.']);

  final String message;

  @override
  String toString() => 'ServerException: $message';
}

class NetworkException implements Exception {
  const NetworkException([this.message = 'No internet connection.']);

  final String message;

  @override
  String toString() => 'NetworkException: $message';
}

class TimeoutException implements Exception {
  const TimeoutException([this.message = 'Request timed out.']);

  final String message;

  @override
  String toString() => 'TimeoutException: $message';
}

class CacheException implements Exception {
  const CacheException([this.message = 'Cache error occurred.']);

  final String message;

  @override
  String toString() => 'CacheException: $message';
}

class NotFoundException implements Exception {
  const NotFoundException([this.message = 'Resource not found.']);

  final String message;

  @override
  String toString() => 'NotFoundException: $message';
}

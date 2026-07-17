import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Centralized logging utility.
///
/// All logging goes through here instead of `print`, and every call is a
/// no-op in release builds so debug noise never ships to production.
abstract final class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      colors: true,
      printEmojis: false,
    ),
  );

  static void d(String message) {
    if (kDebugMode) _logger.d(message);
  }

  static void i(String message) {
    if (kDebugMode) _logger.i(message);
  }

  static void w(String message) {
    if (kDebugMode) _logger.w(message);
  }

  static void e(String message, [Object? error, StackTrace? stackTrace]) {
    if (kDebugMode) _logger.e(message, error: error, stackTrace: stackTrace);
  }

  const AppLogger._();
}

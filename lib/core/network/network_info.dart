import 'package:connectivity_plus/connectivity_plus.dart';

/// Abstraction over device connectivity so repositories can decide whether
/// to hit the network or fall back to cache without depending directly on
/// a third-party plugin (keeps the domain layer testable).
abstract class NetworkInfo {
  Future<bool> get isConnected;

  Stream<bool> get onConnectivityChanged;
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity();

  final Connectivity _connectivity;

  @override
  Future<bool> get isConnected async {
    final List<ConnectivityResult> result = await _connectivity.checkConnectivity();
    return !result.contains(ConnectivityResult.none);
  }

  @override
  Stream<bool> get onConnectivityChanged {
    return _connectivity.onConnectivityChanged.map(
      (List<ConnectivityResult> results) => !results.contains(ConnectivityResult.none),
    );
  }
}

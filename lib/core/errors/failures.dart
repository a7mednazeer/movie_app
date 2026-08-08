import 'package:equatable/equatable.dart';

/// Base class for all domain-layer failures.
///
/// Repositories never throw raw exceptions to the presentation layer —
/// they catch data-layer [Exception]s and map them to a typed [Failure],
/// returned inside a `Either<Failure, T>` (see `dartz`). This keeps the
/// presentation layer free of try/catch blocks and gives every screen a
/// predictable, typed error to render.
abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  List<Object?> get props => <Object?>[message];
}

/// Server responded with an error (4xx/5xx) or a malformed payload.
class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Something went wrong on our end.']);
}

/// No active internet connection.
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection.']);
}

/// The request took too long to complete.
class TimeoutFailure extends Failure {
  const TimeoutFailure([super.message = 'The request timed out.']);
}

/// A local cache/database read or write failed.
class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Failed to read local data.']);
}

/// The request was well-formed but nothing matched (e.g. empty search).
class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Nothing found.']);
}

/// Fallback bucket for anything unexpected.
class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'An unexpected error occurred.']);
}

/// Sign-in / sign-up / account errors.
///
/// Carries a stable [code] (mirroring Firebase Auth's own error codes,
/// e.g. `wrong-password`, `email-already-in-use`) rather than relying on
/// [message] for display — the UI maps [code] to a fully localized
/// string (see `AuthErrorMessages` in the sign-in/sign-up screens) the
/// same way `InlineErrorView` already keys off `Failure` *type* rather
/// than its baked-in English message.
class AuthFailure extends Failure {
  const AuthFailure(this.code, [super.message = 'Authentication error.']);

  final String code;

  @override
  List<Object?> get props => <Object?>[code, message];
}

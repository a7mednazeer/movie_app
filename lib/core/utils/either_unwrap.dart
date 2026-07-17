import 'package:dartz/dartz.dart';

import '../errors/failures.dart';

/// Unwraps an `Either<Failure, T>` into a plain `T`, throwing the
/// [Failure] on the left side so it surfaces naturally as
/// `AsyncValue.error` inside a `FutureProvider` — UI code can then
/// inspect `error is NetworkFailure` etc. to tailor its empty/error
/// state, with no try/catch anywhere in the presentation layer.
Future<T> unwrapEither<T>(Future<Either<Failure, T>> future) async {
  final Either<Failure, T> result = await future;
  return result.fold((Failure failure) => throw failure, (T data) => data);
}

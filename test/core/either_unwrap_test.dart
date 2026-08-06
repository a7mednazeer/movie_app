import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/core/errors/failures.dart';
import 'package:movie_app/core/utils/either_unwrap.dart';

void main() {
  group('unwrapEither', () {
    test('returns the value directly when the Either is Right', () async {
      final Future<Either<Failure, String>> future =
          Future<Either<Failure, String>>.value(const Right<Failure, String>('hello'));

      final String result = await unwrapEither(future);

      expect(result, 'hello');
    });

    test('throws the Failure when the Either is Left', () async {
      const NetworkFailure failure = NetworkFailure('offline');
      final Future<Either<Failure, String>> future =
          Future<Either<Failure, String>>.value(const Left<Failure, String>(failure));

      await expectLater(
        () => unwrapEither(future),
        throwsA(isA<NetworkFailure>().having((NetworkFailure f) => f.message, 'message', 'offline')),
      );
    });

    test('propagates the exact Failure subtype, not just Failure', () async {
      final Future<Either<Failure, int>> future =
          Future<Either<Failure, int>>.value(const Left<Failure, int>(NotFoundFailure()));

      await expectLater(() => unwrapEither(future), throwsA(isA<NotFoundFailure>()));
    });
  });
}

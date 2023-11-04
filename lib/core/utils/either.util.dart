import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.util.freezed.dart';

/// Either utility to receive 2 results
@freezed
class Either<L, R> with _$Either<L, R> {
  /// Left result (error)
  factory Either.left(L value) = _Left;

  /// Right result (correct)
  factory Either.right(R value) = _Right;
}

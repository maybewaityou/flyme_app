import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidValue({
    @required String failedValue,
  }) = _InvalidValue<T>;
  const factory ValueFailure.invalidEmail({
    @required String failedValue,
  }) = _InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required String failedValue,
  }) = _ShortPassword<T>;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  //UNION CASES OF FAILURES
  const factory ValueFailure.invalidEmail({
    @required String failedValue,
//mark type of class 4 freezed rep. name<type>
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    @required String failedValue,
//mark type of class 4 freezed rep. name<type>
  }) = ShortPassword<T>;
}

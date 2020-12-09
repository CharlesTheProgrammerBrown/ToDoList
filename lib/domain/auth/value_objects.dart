import 'package:ToDoList/domain/core/failures.dart';
import 'package:ToDoList/domain/core/value_ojects.dart';
import 'package:ToDoList/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  //value will either be failure object or success obj
  final Either<ValueFailure<String>, String> value;

//validating constructor at instantiation
  factory EmailAddress(String input) {
    assert(input != null); //null safety to assert non null values
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

// make constructor class private
  const EmailAddress._(
    this.value,
  );
}

class Password extends ValueObject<String> {
  //value will either be failure object or success obj
  final Either<ValueFailure<String>, String> value;

//validating constructor at instantiation
  factory Password(String input) {
    assert(input != null); //null safety to assert non null values
    return Password._(
      validatePassword(input),
    );
  }

// make constructor class private
  const Password._(
    this.value,
  );
}

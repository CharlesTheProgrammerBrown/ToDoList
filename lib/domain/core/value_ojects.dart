//will hold abstract value objects so email, password etc can use it

import 'package:ToDoList/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  //value will either be failure object or success obj
  Either<ValueFailure<T>, T> get value;

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Value($value)';
}

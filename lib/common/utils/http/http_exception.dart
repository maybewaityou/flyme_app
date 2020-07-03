import 'package:flutter/foundation.dart';

@immutable
class ExceptionDescriptor implements Exception {
  final String code;
  final String message;

  const ExceptionDescriptor._({
    @required this.code,
    @required this.message,
  });

  factory ExceptionDescriptor.exception({
    @required String code,
    @required String message,
  }) =>
      ExceptionDescriptor._(code: code, message: message);

  @override
  String toString() {
    return 'ExceptionDescriptor{code: $code, message: $message}';
  }
}

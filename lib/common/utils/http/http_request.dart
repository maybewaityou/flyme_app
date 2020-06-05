import 'package:flyme_app/anticorruption/anticorruption.dart';
import 'package:meta/meta.dart';

enum Method { get, post }

@immutable
class Meta {
  /// loader should be hidden?
  final bool silence;

  /// loader's message.
  final String message;

  /// should resend request?
  final bool resend;

  /// success modal title.
  final String successTitle;

  /// success message.
  final String successMessage;

  /// error modal title.
  final String errorTitle;

  /// error message.
  final String errorMessage;

  /// get or post.
  final Method method;

  // data model translator
  final DataModelTranslator translator;

  const Meta({
    this.silence,
    this.message,
    this.resend,
    this.successTitle,
    this.successMessage,
    this.errorTitle,
    this.errorMessage,
    this.method,
    @required this.translator,
  });
}

@immutable
class ParameterWrapper {
  final Meta meta;
  final Map<String, dynamic> params;

  const ParameterWrapper({this.params, @required this.meta});
}

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

  const Meta(
      {this.silence,
      this.message,
      this.resend,
      this.successTitle,
      this.successMessage,
      this.errorTitle,
      this.errorMessage,
      this.method});
}

@immutable
class ParamsWrapper {
  final Meta meta;
  final Map<String, dynamic> params;

  ParamsWrapper(
      {this.params,
      this.meta = const Meta(silence: true, method: Method.post)});
}

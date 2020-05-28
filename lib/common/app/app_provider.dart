import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flyme_app/common/app/application.dart';

class AppProvider extends InheritedWidget {
  final Application application;

  AppProvider({Key key, Widget child, this.application})
      : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static AppProvider of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AppProvider>());
  }

  static Router getRouter(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AppProvider>())
        .application
        .router;
  }

  /// push
  static void navigateTo(BuildContext context, String path,
      {bool replace = false,
      TransitionType transition = TransitionType.inFromRight}) {
    final router = (context.dependOnInheritedWidgetOfExactType<AppProvider>())
        .application
        .router;
    router.navigateTo(context, path, transition: transition, replace: replace);
  }

  /// modal
  static void modalTo(BuildContext context, String path) {
    final router = (context.dependOnInheritedWidgetOfExactType<AppProvider>())
        .application
        .router;
    router.navigateTo(context, path);
  }

  /// pop
  static void pop(BuildContext context) {
    final router = (context.dependOnInheritedWidgetOfExactType<AppProvider>())
        .application
        .router;
    router.pop(context);
  }

  static Application getApplication(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AppProvider>())
        .application;
  }
}

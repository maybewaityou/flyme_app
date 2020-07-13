// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: Instance of 'RouteConfigGenerator'
// **************************************************************************

import 'package:fluro/fluro.dart';
import 'package:flyme_app/common/component/component.dart';
import 'package:flyme_app/common/component/page/not_found_page.dart';
import 'package:flyme_app/feature/auth/user_interface/page/auth_page.dart';
import 'package:flyme_app/feature/home/page/second.dart';
import 'package:flyme_app/feature/registry/user_interface/page/registry_page.dart';
import 'package:flyme_app/user_interface/splash/splash_page.dart';
import 'package:flyme_app/user_interface/tab/tab_container.dart';

class AppRoutesPath {
  static const splash = '/splash';
  static const tab = '/tab';
  static const second = '/home/second';
  static const auth = '/auth';
  static const registry = '/registry';
}

final _routesMap = {
  AppRoutesPath.splash: (params) => SplashPage(),
  AppRoutesPath.tab: (params) => TabContainer(),
  AppRoutesPath.second: (params) => SecondPage(),
  AppRoutesPath.auth: (params) => AuthPage(),
  AppRoutesPath.registry: (params) => RegistryPage(),
};

void setupRoutes(Router router) {
  router.notFoundHandler = _notFoundHandler;
  _routesMap.forEach((key, pageBuilder) {
    router.define(
      key,
      handler: Handler(handlerFunc: (context, params) => pageBuilder(params)),
    );
  });
}

final _notFoundHandler =
    Handler(handlerFunc: (context, params) => NotFoundPage());

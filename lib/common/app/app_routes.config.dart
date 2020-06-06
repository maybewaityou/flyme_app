// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: Instance of 'RouteConfigGenerator'
// **************************************************************************

import 'package:fluro/fluro.dart';
import 'package:flyme_app/common/component/page/not_found_page.dart';
import 'package:flyme_app/user_interface/splash/splash_page.dart';
import 'package:flyme_app/user_interface/tab/home/page/second.dart';
import 'package:flyme_app/user_interface/tab/tab_container.dart';

class AppRoutesPath {
  static const splash = '/splash';
  static const second = '/home/second';
  static const tab = '/tab';
}

final _routesMap = {
  AppRoutesPath.splash: (params) => SplashPage(),
  AppRoutesPath.second: (params) => SecondPage(),
  AppRoutesPath.tab: (params) => TabContainer(),
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

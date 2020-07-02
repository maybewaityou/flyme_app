// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// Generator: Instance of 'RouteConfigGenerator'
// **************************************************************************

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

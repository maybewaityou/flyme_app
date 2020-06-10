// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// Generator: Instance of 'RouteConfigGenerator'
// **************************************************************************

class AppRoutesPath {
  static const splash = '/splash';
  static const tab = '/tab';
  static const registry = '/registry';
  static const second = '/home/second';
}

final _routesMap = {
  AppRoutesPath.splash: (params) => SplashPage(),
  AppRoutesPath.tab: (params) => TabContainer(),
  AppRoutesPath.registry: (params) => RegistryPage(),
  AppRoutesPath.second: (params) => SecondPage(),
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

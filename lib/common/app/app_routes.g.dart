// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// Generator: Instance of 'RouteConfigGenerator'
// **************************************************************************

class AppRoutesPath {
  static const splash = '/splash';
  static const tab = '/tab';
}

final _routesMap = {
  AppRoutesPath.splash: (params) => SplashPage(),
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

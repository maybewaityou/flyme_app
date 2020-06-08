import 'package:fluro/fluro.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/component/page/not_found_page.dart';
import 'package:flyme_app/feature/registry/user_interface/page/page.dart';
import 'package:flyme_app/user_interface/splash/splash_page.dart';
import 'package:flyme_app/user_interface/tab/home/page/second.dart';
import 'package:flyme_app/user_interface/tab/tab_container.dart';

part 'app_routes.g.dart';

@FRouteConfig()
class AppRoutes {
  static void configureRoutes(Router router) => setupRoutes(router);
}

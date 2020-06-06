import 'package:flyme_app/common/config/config.dart';

void main() => Facade();

class Facade extends Config {
  final EnvType environmentType = EnvType.development;

  final int showIntroductionTimes = 3;
  final String appName = 'Flutter Starter Kit';
  final String baseUrl = 'http://localhost/api';
  final String dbName = 'flutterStarterKit.db';
}

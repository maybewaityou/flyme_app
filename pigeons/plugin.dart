import 'package:pigeon/pigeon_lib.dart';

class AppInfo {
  String result;
}

@HostApi()
abstract class SecurityPlugin {
  AppInfo appInfo();
}

class RequestParams {
  String params;
}

class RequestResult {
  String responseJSON;
}

@HostApi()
abstract class NetworkPlugin {
  RequestResult sendRequest(RequestParams params);
  RequestResult fetch(RequestParams params);
}

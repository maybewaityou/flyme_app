/// 配置信息
import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:flyme_app/common/app/app_component.dart';
import 'package:flyme_app/common/app/application.dart';

enum EnvType { development, staging, production, testing }

class Config {
  static Config value;

  String appName;
  int showIntroductionTimes;
  String baseUrl;
  EnvType environmentType = EnvType.development;

  /// Database Config
  int dbVersion = 1;
  String dbName;

  Config() {
    value = this;
    _init();
  }

  void _init() async {
    if (EnvType.development == environmentType ||
        EnvType.staging == environmentType) {
      Stetho.initialize();
    }

    final application = Application();
    await application.init();
    runApp(AppComponent(application));
  }
}

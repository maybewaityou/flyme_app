import 'package:flutter/material.dart';
import 'package:flyme_annotation/router/router.dart';
import 'package:flyme_app/common/app/app_provider.dart';
import 'package:flyme_app/common/app/app_routes.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/service/service.dart';
import 'package:flyme_app/common/utils/log/logger.dart';
import 'package:flyme_app/common/utils/stroage/sp_utils.dart';

@FRoute(url: '/splash')
class SplashPage extends StatefulWidget {
  @override
  _SplashPage createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  DBService _dbService;

  @override
  void initState() {
    super.initState();

    _initDB().then(
      (_) => AppProvider.navigateTo(
        context,
        _getTargetRoutePath(),
        replace: true,
      ),
    );
  }

  Future<void> _initDB() async {
    await SPUtils.getInstance().init();
    info('===== SPUtils init success =====');

    _dbService = getIt.get<DBService>();
    await _dbService.init(Config.value.dbName);
    info('== DB name ===>>>> ${Config.value.dbName}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'This is SplashPage.',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

String _getTargetRoutePath() {
  const key = 'startTimes';
  final startTimes = SPUtils.getInstance().get<int>(key) ?? 0;

  var targetRoutePath = AppRoutesPath.tab;
  if (startTimes < Config.value.showIntroductionTimes) {
//    targetRoutePath = AppRoutesPath.introduction;
    SPUtils.getInstance().set<int>(key, startTimes + 1);
  }
  return targetRoutePath;
}

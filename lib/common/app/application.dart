import 'package:chassis/utils/log/logger.dart' as logger;
import 'package:fluro/fluro.dart';
import 'package:flyme_app/common/app/app_routes.dart';
import 'package:flyme_app/common/app/application.iconfig.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => $initGetIt(getIt);

class Application {
  Router router;

  Future<void> init() async {
    _initLog();
    _initRouter();
    await _initInject();
  }

  Future<void> _initInject() async {
    configureDependencies();
    logger.info('inject container init : Success');
  }

  void _initLog() {
    logger.init();

    switch (Config.value.environmentType) {
      case EnvType.testing:
      case EnvType.development:
      case EnvType.staging:
        {
          logger.setLevel(Level.ALL);
          break;
        }
      case EnvType.production:
        {
          logger.setLevel(Level.INFO);
          break;
        }
    }
  }

  void _initRouter() {
    router = Router();
    AppRoutes.configureRoutes(router);
  }
}

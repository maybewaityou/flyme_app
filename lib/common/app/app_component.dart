import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flyme_app/common/app/app_provider.dart';
import 'package:flyme_app/common/app/app_routes.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/component/component.dart';
import 'package:flyme_app/common/component/responsive_widget/size_config.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/config/theme/theme.dart';
import 'package:flyme_app/common/provider/model_provider.dart';
import 'package:flyme_app/common/utils/log/logger.dart';
import 'package:flyme_app/generated/l10n.dart';
import 'package:flyme_app/user_interface/view_model/system_model.dart';

class AppComponent extends StatefulWidget {
  final Application _application;

  AppComponent(this._application);

  @override
  _AppComponentState createState() => _AppComponentState(_application);
}

class _AppComponentState extends State<AppComponent> {
  final Application _application;

  _AppComponentState(this._application);

  @override
  Widget build(BuildContext context) {
    final initialRoute = AppRoutesPath.splash;
    info('== initial core.route ===>>>> $initialRoute');
    return AppProvider(
      application: _application,
      child: ContextProvider(
        child: LayoutBuilder(
          builder: (context, constraints) => OrientationBuilder(
            builder: (context, orientation) {
              SizeConfig().init(constraints, orientation);
              return ModelProvider<SystemModel>(
                model: getIt.get(),
                builder: (context, systemModel, _) => MaterialApp(
                  title: Config.value.appName,
                  debugShowCheckedModeBanner: false,
                  theme: appThemeData[systemModel.theme],
                  initialRoute: initialRoute,
                  onGenerateRoute: _application.router.generator,
                  home: Container(),
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

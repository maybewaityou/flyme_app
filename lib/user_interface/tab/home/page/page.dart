/// Page
import 'package:flutter/material.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/component/app_title/app_title.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/config/theme/theme.dart';
import 'package:flyme_app/user_interface/global/locale_model.dart';
import 'package:flyme_app/user_interface/global/theme_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppTitle(title: Config.value.appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.blueLight;
              },
              child: const Text('change theme blueLight'),
            ),
            RaisedButton(
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.blueDark;
              },
              child: const Text('change theme blueDark'),
            ),
            RaisedButton(
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.greenLight;
              },
              child: const Text('change theme greenLight'),
            ),
            RaisedButton(
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.greenDark;
              },
              child: const Text('change theme greenDark'),
            ),
            RaisedButton(
              onPressed: () {
                final localeModel = getIt.get<LocaleModel>();
                localeModel.changeLocale(Locale('zh'));
              },
              child: const Text('change language zh'),
            ),
            RaisedButton(
              onPressed: () {
                final localeModel = getIt.get<LocaleModel>();
                localeModel.changeLocale(Locale('en'));
              },
              child: const Text('change language en'),
            ),
          ],
        ),
      ),
    );
  }
}

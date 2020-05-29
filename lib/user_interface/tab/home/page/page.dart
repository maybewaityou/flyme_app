/// Page
import 'package:flutter/material.dart';
import 'package:flyme_app/common/app/app_provider.dart';
import 'package:flyme_app/common/app/app_routes.dart';
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
              child: const Text('change theme blueLight'),
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.blueLight;
              },
            ),
            RaisedButton(
              child: const Text('change theme blueDark'),
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.blueDark;
              },
            ),
            RaisedButton(
              child: const Text('change theme greenLight'),
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.greenLight;
              },
            ),
            RaisedButton(
              child: const Text('change theme greenDark'),
              onPressed: () {
                final themeModel = getIt.get<ThemeModel>();
                themeModel.theme = AppTheme.greenDark;
              },
            ),
            RaisedButton(
              child: const Text('change language zh'),
              onPressed: () {
                final localeModel = getIt.get<LocaleModel>();
                localeModel.changeLocale('zh');
              },
            ),
            RaisedButton(
              child: const Text('change language en'),
              onPressed: () {
                final localeModel = getIt.get<LocaleModel>();
                localeModel.changeLocale('en');
              },
            ),
            RaisedButton(
              child: const Text('navigate to second page'),
              onPressed: () {
                AppProvider.navigateTo(context, AppRoutesPath.second);
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// Page
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flyme_app/common/app/app_provider.dart';
import 'package:flyme_app/common/app/app_routes.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/component/app_title/app_title.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/config/theme/theme.dart';
import 'package:flyme_app/common/provider/model_provider.dart';
import 'package:flyme_app/user_interface/global/locale_model.dart';
import 'package:flyme_app/user_interface/global/theme_model.dart';
import 'package:flyme_app/user_interface/tab/home/view_model/home_view_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppTitle(title: Config.value.appName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: 540,
              height: 300,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1590732822&di=f9ff4c298ac1c7ed7a73c3639f62af61&src=http://img.pconline.com.cn/images/upload/upc/tx/wallpaper/1306/14/c2/22062743_1371190605358.jpg",
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 3,
                autoplay: true,
                autoplayDelay: 5000,
                duration: 800,
                pagination: SwiperPagination(),
              ),
            ),
            Center(
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
                  RaisedButton(
                    child: const Text('navigate to second page'),
                    onPressed: () {
                      AppProvider.navigateTo(context, AppRoutesPath.second);
                    },
                  ),
                  RaisedButton(
                    child: const Text('navigate to second page'),
                    onPressed: () {
                      AppProvider.navigateTo(context, AppRoutesPath.second);
                    },
                  ),
                  RaisedButton(
                    child: const Text('navigate to second page'),
                    onPressed: () {
                      AppProvider.navigateTo(context, AppRoutesPath.second);
                    },
                  ),
                  ModelProvider<HomeViewModel>(
                    model: getIt.get(),
                    autoDispose: false,
                    builder: (context, model, __) => RaisedButton(
                      child: const Text('login'),
                      onPressed: model.handlePress,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

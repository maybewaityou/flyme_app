import 'package:flutter/material.dart';
import 'package:flyme_annotation/router/router.dart';
import 'package:flyme_app/common/component/app_title/app_title.dart';
import 'package:flyme_app/common/config/config.dart';

@FRoute(url: '/fly/login')
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppTitle(title: Config.value.appName),
      ),
      body: Container(),
    );
  }
}

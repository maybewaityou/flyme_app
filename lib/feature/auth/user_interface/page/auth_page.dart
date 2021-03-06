import 'package:chassis/chassis.dart';
import 'package:flutter/material.dart';
import 'package:flyme_annotation/router/router.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/feature/auth/user_interface/view_model/auth_view_model.dart';
import 'package:flyme_provider/flyme_provider.dart';

@FRoute(url: '/auth') // 自动注册路由信息
class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppTitle(title: Config.value.appName),
      ),
      body: ModelProvider<AuthViewModel>(
        model: getIt.get(),
        builder: _contentBuilder,
      ),
    );
  }
}

Widget _contentBuilder(
    BuildContext context, AuthViewModel viewModel, Widget child) {
  return viewModel.viewObject.when(
    loading: () => Container(),
    error: (errorMessage) => Container(child: Text(errorMessage)),
    viewObject: (userName, password, userInfo) => Container(
      child: FlatButton(
        onPressed: viewModel.handleAuthPress,
        child: Text(userInfo?.name ?? "button"),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flyme_annotation/router/router.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/component/widget/widget.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/provider/model_provider.dart';
import 'package:flyme_app/feature/auth/user_interface/view_model/auth_view_model.dart';

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
    viewObject: (userName, password, userInfo) => Container(),
    loading: () => Container(),
    error: (errorMessage) => Container(),
  );
}

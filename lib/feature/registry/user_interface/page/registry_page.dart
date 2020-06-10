import 'package:flutter/material.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/component/app_title/app_title.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/provider/model_provider.dart';
import 'package:flyme_app/feature/registry/user_interface/view_model/registry_view_model.dart';

@FRoute(url: '/registry')
class RegistryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppTitle(title: Config.value.appName),
      ),
      body: Center(
        child: ModelProvider<RegistryViewModel>(
          model: getIt.get(),
          builder: _contentBuilder,
        ),
      ),
    );
  }
}

Widget _contentBuilder(
    BuildContext context, RegistryViewModel viewModel, Widget child) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      ...viewModel.users.map((user) => Text(user.name ?? '')).toList(),
      Text(
        viewModel.userName,
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
      ),
      RaisedButton(
        child: Text('Registry.'),
        onPressed: viewModel.handleRegistryPress,
      ),
      RaisedButton(
        child: Text('Go back.'),
        onPressed: () => viewModel.handleGoBack(context),
      ),
    ],
  );
}

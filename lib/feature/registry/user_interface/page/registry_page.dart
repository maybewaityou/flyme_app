import 'package:flutter/material.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/common/component/component.dart';
import 'package:flyme_app/common/component/widget/app_title/app_title.dart';
import 'package:flyme_app/common/config/config.dart';
import 'package:flyme_app/common/provider/model_provider.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
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
  final viewObject = viewModel.viewObject;
  print('===== _contentBuilder =====');
  return viewObject.when(
    loading: () => const Center(child: CircularProgressIndicator()),
    error: (errorMessage) => Center(
      child: Text(errorMessage),
    ),
    viewObject:
        (type, userName, emailAddress, phoneNumber, name, users, refreshing) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ...users.map((user) => Text(user.name ?? '')).toList(),
          Text(
            name,
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),
          ),
          type.when(
              phone: () => TextField(
                    controller: viewModel.phoneController,
                    maxLength: 11,
                    maxLines: 1,
                    style: TextStyle(fontSize: 18.0), //输入文本的样式
                    onChanged: viewModel.handlePhoneChange,
                    enabled: true,
                    decoration: InputDecoration(
                      fillColor: Colors.blue.shade100,
                      filled: true,
                      labelText: '请输入手机号',
                      errorText: phoneNumber.isValid()
                          ? null
                          : 'phone number is invalidate',
                    ),
                  ),
              email: () => TextField(
                    controller: viewModel.emailController,
                    maxLength: 10,
                    maxLines: 1,
                    style: TextStyle(fontSize: 18.0), //输入文本的样式
                    onChanged: viewModel.handleEmailChange,
                    enabled: true,
                    decoration: InputDecoration(
                      fillColor: Colors.blue.shade100,
                      filled: true,
                      labelText: '请输入邮箱',
                      errorText:
                          emailAddress.isValid() ? null : 'email is invalidate',
                    ),
                  ),
              weiXin: () => Container()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('手机号'),
              Radio(
                  value: RegistryType.phone(),
                  groupValue: type,
                  onChanged: viewModel.handleChangeType),
              SizedBox(width: 50),
              Text('Email'),
              Radio(
                  value: RegistryType.email(),
                  groupValue: type,
                  onChanged: viewModel.handleChangeType),
            ],
          ),
          RaisedButton(
            key: const Key('registryLoading'),
            child: Text('Loading.'),
            onPressed: () async {
              showLoading(context);
              await Future.delayed(Duration(seconds: 5));
              dismiss(context);
            },
          ),
          RaisedButton(
            key: const Key('registryRegistry'),
            child: Text('Registry.'),
            onPressed: viewModel.handleRegistryPress,
          ),
          RaisedButton(
            key: const Key('registryPublishEvent'),
            child: Text('Publish event.'),
            onPressed: viewModel.handlePublishEvent,
          ),
          RaisedButton(
            key: const Key('registryPageGoBack'),
            child: Text('Go back.'),
            onPressed: () => viewModel.handleGoBack(context),
          ),
        ],
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/app/app_provider.dart';

@FRoute(url: '/home/second')
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Second'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("This is second page."),
            RaisedButton(
              key: const Key('secondPageGoBack'),
              child: Text('go back'),
              onPressed: () => AppProvider.pop(context),
            )
          ],
        ),
      ),
    );
  }
}

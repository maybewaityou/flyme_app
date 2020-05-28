import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final String title;

  const AppTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title));
  }
}

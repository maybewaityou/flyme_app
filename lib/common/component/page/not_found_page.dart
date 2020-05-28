import 'package:flutter/material.dart';
import 'package:flyme_annotation/flyme_annotation.dart';

@FRoute(url: '/not_found')
class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Route was not found.')),
      ),
      body: const Center(
        child: Text(
          'Route was not found.',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void showLoading(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      child: Dialog(
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const Text('loading...'))
                ],
              ))));
}

void dismiss(BuildContext context) {
  Navigator.of(context).pop();
}

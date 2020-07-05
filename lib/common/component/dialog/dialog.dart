import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';

class DialogManager {
  ProgressDialog _progressDialog;

  DialogManager._(BuildContext context) {
    _progressDialog = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false, showLogs: false);
  }

  factory DialogManager(BuildContext context) => DialogManager._(context);

  Future<bool> showLoading({String message}) {
    _progressDialog.update(message: message);
    return _progressDialog.show();
  }

  Future<bool> showLoadingWithConfig({
    double progress,
    double maxProgress,
    String message,
    Widget progressWidget,
    TextStyle progressTextStyle,
    TextStyle messageTextStyle,
  }) {
    _progressDialog.update(
      message: message,
      progress: progress,
      maxProgress: maxProgress,
      progressWidget: progressWidget,
      progressTextStyle: progressTextStyle,
      messageTextStyle: messageTextStyle,
    );
    return _progressDialog.show();
  }

  Future<bool> dismissLoading() {
    return _progressDialog.hide();
  }
}

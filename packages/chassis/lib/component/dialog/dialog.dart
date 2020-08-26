import 'package:flutter/material.dart';

import '../provider/context_provider.dart';
import 'loading/loading.dart';

class DialogManager {
  static DialogManager _instance;
  OverlayEntry _overlayEntry;

  DialogManager._();

  static DialogManager instance() {
    if (_instance == null) {
      _instance = DialogManager._();
    }
    return _instance;
  }

  void showLoading({String message}) {
    final context = ContextProvider.context();

    if (_overlayEntry != null) _overlayEntry.remove();

    final entry = OverlayEntry(builder: (ctx) {
      return Loading(message: message ?? 'loading...');
    });

    _overlayEntry = entry;

    Overlay.of(context).insert(entry);
  }

  void dismissLoading() {
    if (_overlayEntry != null) {
      _overlayEntry.remove();
      _overlayEntry = null;
    }
  }
}

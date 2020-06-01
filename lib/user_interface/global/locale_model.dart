import 'package:flutter/material.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/generated/l10n.dart';
import 'package:injectable/injectable.dart';

part 'locale_model.g.dart';

@lazySingleton
@Properties([])
class LocaleModel extends _$ViewModel {
  @override
  void init() {
    print('==== LocaleModel init ====');
  }

  void changeLocale(String locale) {
    S.load(Locale(locale));
    notifyListeners();
  }
}

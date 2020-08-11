import 'package:flutter/material.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/config/theme/theme.dart';
import 'package:flyme_app/generated/l10n.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:injectable/injectable.dart';

part 'system_model.g.dart';

@lazySingleton
@Properties([
  Property(
    name: 'theme',
    type: AppTheme,
    initial: 'AppTheme.blueLight',
  )
])
class SystemModel extends _$ViewModel {
  @override
  void init() {
    print('==== SystemModel init ====');
  }

  void changeLocale(String locale) {
    S.load(Locale(locale));
    notifyListeners();
  }
}

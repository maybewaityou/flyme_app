// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/user_interface/global/locale_model.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/user_interface/global/theme_model.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<DBService>(() => DBService());
  g.registerLazySingleton<LocaleModel>(() => LocaleModel());
  g.registerLazySingleton<NetworkService>(() => NetworkService());
  g.registerLazySingleton<ThemeModel>(() => ThemeModel());
}

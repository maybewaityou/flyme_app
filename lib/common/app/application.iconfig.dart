// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/home/view_model/home_view_model.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/local/registry_local.dart';
import 'package:flyme_app/user_interface/global/locale_model.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/user_interface/global/theme_model.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/remote/registry_remote.dart';
import 'package:flyme_app/feature/registry/infrastructure/repository/registry_repository.dart';
import 'package:flyme_app/feature/registry/domain/repository/registry_repository.dart';
import 'package:flyme_app/feature/registry/application/use_case/registry_use_case.dart';
import 'package:flyme_app/feature/registry/user_interface/view_model/registry_view_model.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<DBService>(() => DBService());
  g.registerLazySingleton<HomeViewModel>(() => HomeViewModel());
  g.registerLazySingleton<IRegistryLocalDataSource>(
      () => RegistryLocalDataSource(g<DBService>()));
  g.registerLazySingleton<LocaleModel>(() => LocaleModel());
  g.registerLazySingleton<NetworkService>(() => NetworkService());
  g.registerLazySingleton<ThemeModel>(() => ThemeModel());
  g.registerLazySingleton<IRegistryRemoteDataSource>(
      () => RegistryRemoteDataSource(g<NetworkService>()));
  g.registerLazySingleton<IRegistryRepository>(() => RegistryRepository(
      g<IRegistryLocalDataSource>(), g<IRegistryRemoteDataSource>()));
  g.registerLazySingleton<IRegistryUseCase>(
      () => RegistryUseCase(g<IRegistryRepository>()));
  g.registerFactory<RegistryViewModel>(
      () => RegistryViewModel(g<IRegistryUseCase>()));
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/local/auth_local.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/local/registry_local.dart';
import 'package:flyme_app/user_interface/global/locale_model.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/user_interface/global/theme_model.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/remote/auth_remote.dart';
import 'package:flyme_app/feature/auth/infrastructure/repository/repository.dart';
import 'package:flyme_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:flyme_app/feature/auth/application/use_case/use_case.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/remote/registry_remote.dart';
import 'package:flyme_app/feature/registry/infrastructure/repository/registry_repository.dart';
import 'package:flyme_app/feature/registry/domain/repository/registry_repository.dart';
import 'package:flyme_app/feature/registry/application/use_case/registry_use_case.dart';
import 'package:flyme_app/feature/registry/user_interface/view_model/registry_view_model.dart';
import 'package:flyme_app/feature/auth/user_interface/view_model/auth_view_model.dart';
import 'package:flyme_app/user_interface/tab/home/view_model/home_view_model.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<DBService>(() => DBService());
  g.registerLazySingleton<IAuthLocalDataSource>(
      () => PasswordLocalDataSource(g<DBService>()),
      instanceName: 'PasswordLocalDataSource');
  g.registerLazySingleton<IAuthLocalDataSource>(
      () => SmsLocalDataSource(g<DBService>()),
      instanceName: 'SmsLocalDataSource');
  g.registerLazySingleton<IRegistryLocalDataSource>(
      () => RegistryLocalDataSource(g<DBService>()),
      instanceName: 'RegistryLocalDataSource');
  g.registerLazySingleton<LocaleModel>(() => LocaleModel());
  g.registerLazySingleton<NetworkService>(() => NetworkService());
  g.registerLazySingleton<ThemeModel>(() => ThemeModel());
  g.registerLazySingleton<IAuthRemoteDataSource>(
      () => PasswordRemoteDataSource(g<NetworkService>()),
      instanceName: 'PasswordRemoteDataSource');
  g.registerLazySingleton<IAuthRemoteDataSource>(
      () => SmsRemoteDataSource(g<NetworkService>()),
      instanceName: 'SmsRemoteDataSource');
  g.registerLazySingleton<IAuthRepository>(
      () => PasswordAuthRepository(
          g<IAuthLocalDataSource>(instanceName: 'PasswordLocalDataSource'),
          g<IAuthRemoteDataSource>(instanceName: 'PasswordRemoteDataSource')),
      instanceName: 'PasswordAuthRepository');
  g.registerLazySingleton<IAuthRepository>(
      () => SmsAuthRepository(
          g<IAuthLocalDataSource>(instanceName: 'SmsLocalDataSource'),
          g<IAuthRemoteDataSource>(instanceName: 'SmsRemoteDataSource')),
      instanceName: 'SmsAuthRepository');
  g.registerLazySingleton<IAuthUseCase>(() => AuthUseCase(
      g<IAuthRepository>(instanceName: 'PasswordAuthRepository'),
      g<IAuthRepository>(instanceName: 'SmsAuthRepository')));
  g.registerLazySingleton<IRegistryRemoteDataSource>(
      () => RegistryRemoteDataSource(g<NetworkService>()),
      instanceName: 'RegistryRemoteDataSource');
  g.registerLazySingleton<IRegistryRepository>(
      () => RegistryRepository(
          g<IRegistryLocalDataSource>(), g<IRegistryRemoteDataSource>()),
      instanceName: 'RegistryRepository');
  g.registerLazySingleton<IRegistryUseCase>(
      () => RegistryUseCase(g<IRegistryRepository>()));
  g.registerLazySingleton<RegistryViewModel>(
      () => RegistryViewModel(g<IRegistryUseCase>()));
  g.registerLazySingleton<AuthViewModel>(
      () => AuthViewModel(g<IAuthUseCase>()));
  g.registerLazySingleton<HomeViewModel>(
      () => HomeViewModel(g<IAuthUseCase>()));
}

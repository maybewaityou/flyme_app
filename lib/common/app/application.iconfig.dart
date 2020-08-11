// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flyme_app/feature/auth/domain/service/authentication_service.dart';
import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/home/view_model/home_view_model.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/local/auth_local.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/local/registry_local.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/user_interface/view_model/system_model.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/remote/auth_remote.dart';
import 'package:flyme_app/feature/auth/infrastructure/repository/auth_repository.dart';
import 'package:flyme_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:flyme_app/feature/auth/application/use_case/auth_use_case.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/remote/registry_remote.dart';
import 'package:flyme_app/feature/registry/infrastructure/repository/registry_repository.dart';
import 'package:flyme_app/feature/registry/domain/repository/registry_repository.dart';
import 'package:flyme_app/feature/registry/application/use_case/registry_use_case.dart';
import 'package:flyme_app/feature/registry/user_interface/view_model/registry_view_model.dart';
import 'package:flyme_app/feature/auth/user_interface/view_model/auth_view_model.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<AuthenticationService>(() => AuthenticationService());
  g.registerLazySingleton<DBService>(() => DBService());
  g.registerLazySingleton<HomeViewModel>(() => HomeViewModel());
  g.registerLazySingleton<IAuthLocalDataSource>(
      () => AuthLocalDataSource(g<DBService>()));
  g.registerLazySingleton<IRegistryLocalDataSource>(
      () => RegistryLocalDataSource(g<DBService>()));
  g.registerLazySingleton<NetworkService>(() => NetworkService());
  g.registerLazySingleton<SystemModel>(() => SystemModel());
  g.registerLazySingleton<IAuthRemoteDataSource>(
      () => AuthRemoteDataSource(g<NetworkService>()));
  g.registerLazySingleton<IAuthRepository>(() =>
      AuthRepository(g<IAuthLocalDataSource>(), g<IAuthRemoteDataSource>()));
  g.registerLazySingleton<IAuthUseCase>(
      () => AuthUseCase(g<IAuthRepository>()));
  g.registerLazySingleton<IRegistryRemoteDataSource>(
      () => RegistryRemoteDataSource(g<NetworkService>()));
  g.registerLazySingleton<IRegistryRepository>(() => RegistryRepository(
      g<IRegistryLocalDataSource>(), g<IRegistryRemoteDataSource>()));
  g.registerLazySingleton<IRegistryUseCase>(
      () => RegistryUseCase(g<IRegistryRepository>()));
  g.registerFactory<RegistryViewModel>(
      () => RegistryViewModel(g<IRegistryUseCase>()));
  g.registerFactory<AuthViewModel>(() => AuthViewModel(g<IAuthUseCase>()));
}

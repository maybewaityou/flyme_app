// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/local/auth_local.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/local/fly_local.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/local/password_login_local.dart';
import 'package:flyme_app/user_interface/global/locale_model.dart';
import 'package:flyme_app/feature/fly/user_interface/view_model/login_view_model.dart';
import 'package:flyme_app/feature/fly/application/use_case/login_use_case.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/user_interface/global/theme_model.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/remote/auth_remote.dart';
import 'package:flyme_app/feature/auth/infrastructure/repository/repository.dart';
import 'package:flyme_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:flyme_app/feature/auth/application/use_case/use_case.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/remote/fly_remote.dart';
import 'package:flyme_app/feature/fly/infrastructure/repository/fly_repository.dart';
import 'package:flyme_app/feature/fly/domain/repository/fly_repository.dart';
import 'package:flyme_app/feature/fly/application/use_case/fly_use_case.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/remote/password_login_remote.dart';
import 'package:flyme_app/feature/auth/user_interface/view_model/auth_view_model.dart';
import 'package:flyme_app/feature/fly/user_interface/view_model/fly_view_model.dart';
import 'package:flyme_app/user_interface/tab/home/view_model/home_view_model.dart';
import 'package:flyme_app/feature/fly/infrastructure/repository/password_login_repository.dart';
import 'package:flyme_app/feature/fly/domain/repository/login_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<DBService>(() => DBService());
  g.registerLazySingleton<IAuthLocalDataSource>(
      () => PasswordLocalDataSource(g<DBService>()),
      instanceName: 'PasswordLocalDataSource');
  g.registerLazySingleton<IAuthLocalDataSource>(
      () => SmsLocalDataSource(g<DBService>()),
      instanceName: 'SmsLocalDataSource');
  g.registerLazySingleton<IFlyLocalDataSource>(
      () => FlyLocalDataSource(g<DBService>()),
      instanceName: 'FlyLocalDataSource');
  g.registerLazySingleton<IPasswordLoginLocalDataSource>(
      () => PasswordLoginLocalDataSource(g<DBService>()),
      instanceName: 'PasswordLoginLocalDataSource');
  g.registerLazySingleton<LocaleModel>(() => LocaleModel());
  g.registerLazySingleton<LoginViewModel>(
      () => LoginViewModel(g<ILoginUseCase>()));
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
  g.registerLazySingleton<IFlyRemoteDataSource>(
      () => FlyRemoteDataSource(g<NetworkService>()),
      instanceName: 'FlyRemoteDataSource');
  g.registerLazySingleton<IFlyRepository>(
      () => FlyRepository(g<IFlyLocalDataSource>(), g<IFlyRemoteDataSource>()),
      instanceName: 'FlyRepository');
  g.registerLazySingleton<IFlyUseCase>(() => FlyUseCase(g<IFlyRepository>()));
  g.registerLazySingleton<IPasswordLoginRemoteDataSource>(
      () => PasswordLoginRemoteDataSource(g<NetworkService>()),
      instanceName: 'PasswordLoginRemoteDataSource');
  g.registerLazySingleton<AuthViewModel>(
      () => AuthViewModel(g<IAuthUseCase>()));
  g.registerLazySingleton<FlyViewModel>(() => FlyViewModel(g<IFlyUseCase>()));
  g.registerLazySingleton<HomeViewModel>(
      () => HomeViewModel(g<IAuthUseCase>()));
  g.registerLazySingleton<ILoginRepository>(
      () => PasswordLoginRepository(g<IPasswordLoginLocalDataSource>(),
          g<IPasswordLoginRemoteDataSource>()),
      instanceName: 'PasswordLoginRepository');
}

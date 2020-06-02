import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/local/fly_local.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/remote/fly_remote.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: IFlyRepository)
class FlyRepository implements IFlyRepository {
  final IFlyLocalDataSource _localDataSource;
  final IFlyRemoteDataSource _remoteDataSource;

  const FlyRepository(this._localDataSource, this._remoteDataSource);
}

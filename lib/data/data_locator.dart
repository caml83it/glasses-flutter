import 'package:get_it/get_it.dart';
import 'package:glasses/data/datasources/remote/api_client.dart';
import 'package:glasses/data/repositories/auth_repository_impl.dart';
import 'package:glasses/data/repositories/banner_repository_impl.dart';
import 'package:glasses/data/repositories/trademark_repository_impl.dart';
import 'package:glasses/domain/repositories/auth_repository.dart';
import 'package:glasses/domain/repositories/banner_repository.dart';
import 'package:glasses/domain/repositories/trademark_repository.dart';

final dataLocator = GetIt.instance;
void setupDataLocator() {
  // api_client
  dataLocator.registerLazySingleton<ApiClient>(() => ApiClient());
  // banner_repository
  dataLocator.registerLazySingleton<BannerRepository>(
    () => BannerRepositoryImpl(client: dataLocator()),
  );
  dataLocator.registerLazySingleton<TrademarkRepository>(
    () => TrademarkRepositoryImpl(client: dataLocator()),
  );

  dataLocator.registerLazySingleton<AuthRepository>(() {
    return AuthRepositoryImpl(client: dataLocator());
  });
}

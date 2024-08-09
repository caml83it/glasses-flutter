import 'package:get_it/get_it.dart';
import 'package:glasses/data/data_locator.dart';
import 'package:glasses/domain/usecases/auth_usecases.dart';
import 'package:glasses/domain/usecases/banner_usecases.dart';
import 'package:glasses/domain/usecases/trademark_usecases.dart';

final domainLocator = GetIt.instance;
void setupDomainLocator() {
  // banner_use_cases
  domainLocator.registerLazySingleton<FetchAllBannerUseCase>(
    () => FetchAllBannerUseCase(repository: dataLocator()),
  );

  // trademarks_use_cases
  domainLocator.registerLazySingleton<FetchTrademarksUseCase>(
    () => FetchTrademarksUseCase(repository: dataLocator()),
  );

  domainLocator.registerLazySingleton<LoginUseCase>(() {
    return LoginUseCase(repository: dataLocator());
  });
}

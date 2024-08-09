import 'package:get_it/get_it.dart';
import 'package:glasses/domain/domain_locator.dart';
import 'package:glasses/features/home/bloc/home_bloc.dart';
import 'package:glasses/features/signin/bloc/signin_bloc.dart';

final featureLocator = GetIt.instance;

void setupFeatureLocator() {
  // home_bloc
  featureLocator.registerFactory<HomeBloc>(
    () => HomeBloc(
      fetchAllBanners: domainLocator(),
      fetchTrademarks: domainLocator(),
    ),
  );

  featureLocator.registerFactory<SignInBloc>(() => SignInBloc());
}

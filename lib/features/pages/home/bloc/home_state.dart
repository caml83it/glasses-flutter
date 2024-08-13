part of 'home_bloc.dart';

class HomeState extends BaseBlocState {
  final List<BannerEntity> banners;
  final List<TrademarkEntity> trademarks;

  HomeState({
    required this.banners,
    required this.trademarks,
    super.isInitialLoading,
    super.errorMessage,
  });

  HomeState copyWith({
    List<BannerEntity>? banners,
    List<TrademarkEntity>? trademarks,
    bool? isInitialLoading,
    String? errorMessage,
  }) {
    return HomeState(
      banners: banners ?? this.banners,
      trademarks: trademarks ?? this.trademarks,
      isInitialLoading: isInitialLoading ?? this.isInitialLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class InitialState extends HomeState {
  InitialState()
      : super(
          banners: [],
          trademarks: [],
        );
}

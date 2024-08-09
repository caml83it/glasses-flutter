import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glasses/core/base_state.dart';
import 'package:glasses/domain/entities/banner_entity.dart';
import 'package:glasses/domain/entities/trademark_entity.dart';
import 'package:glasses/domain/usecases/banner_usecases.dart';
import 'package:glasses/domain/usecases/trademark_usecases.dart';
import 'package:glasses/shared/utils/log_utils.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchAllBannerUseCase fetchAllBanners;
  final FetchTrademarksUseCase fetchTrademarks;
  HomeBloc({
    required this.fetchAllBanners,
    required this.fetchTrademarks,
  }) : super(InitialState()) {
    on<OnInitialize>(_onInitialize);
  }

  Future<void> _onInitialize(
    OnInitialize event,
    Emitter<HomeState> emit,
  ) async {
    LogUtils.methodIn();
    try {
      List<BannerEntity> banners = await fetchAllBanners.exec();
      List<TrademarkEntity> trademarks = await fetchTrademarks.exec();
      LogUtils.d("NumOfItems__Banner: ${banners.length}");
      LogUtils.d("NumOfItems__Trademark: ${trademarks.length}");
      emit(state.copyWith(
        banners: banners,
        trademarks: trademarks,
      ));
    } on Exception catch (e) {
      LogUtils.e(e.toString());
    }
    LogUtils.methodOut();
  }
}

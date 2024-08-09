import 'package:glasses/core/usecase.dart';
import 'package:glasses/data/models/banner_model.dart';
import 'package:glasses/data/models/trademark_model.dart';
import 'package:glasses/data/responses/api_list_response.dart';
import 'package:glasses/domain/entities/banner_entity.dart';
import 'package:glasses/domain/entities/trademark_entity.dart';
import 'package:glasses/domain/repositories/trademark_repository.dart';

class FetchTrademarksUseCase extends UseCase<List<TrademarkEntity>> {
  final TrademarkRepository repository;

  FetchTrademarksUseCase({required this.repository});

  @override
  Future<List<TrademarkEntity>> exec() async {
    ApiListResponse<TrademarkModel> results = await repository.getTrademarks(
      page: 0,
      pageSize: 10,
    );

    return results.items.map((e) => e.toEntity()).toList();
  }
}

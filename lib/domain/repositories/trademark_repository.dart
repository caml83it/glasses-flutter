import 'package:glasses/data/models/trademark_model.dart';
import 'package:glasses/data/responses/api_list_response.dart';

abstract class TrademarkRepository {
  Future<ApiListResponse<TrademarkModel>> getTrademarks({
    required int page,
    required int pageSize,
  });
}

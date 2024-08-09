import 'package:dio/dio.dart';
import 'package:glasses/data/datasources/remote/api_client.dart';
import 'package:glasses/data/datasources/remote/api_endpoints.dart';
import 'package:glasses/data/models/trademark_model.dart';
import 'package:glasses/data/responses/api_list_response.dart';
import 'package:glasses/domain/repositories/trademark_repository.dart';

class TrademarkRepositoryImpl implements TrademarkRepository {
  final ApiClient client;

  TrademarkRepositoryImpl({required this.client});

  @override
  Future<ApiListResponse<TrademarkModel>> getTrademarks({
    required int page,
    required int pageSize,
  }) async {
    Response response = await client.get(ApiEndpoints.trademarks);
    return ApiListResponse.fromJson(
      response.data,
      (json) => TrademarkModel.fromJson(json as Map<String, dynamic>),
    );
  }
}

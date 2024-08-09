import 'package:dio/dio.dart';
import 'package:glasses/data/datasources/remote/api_client.dart';
import 'package:glasses/data/datasources/remote/api_endpoints.dart';
import 'package:glasses/data/models/banner_model.dart';
import 'package:glasses/data/responses/api_list_response.dart';
import 'package:glasses/domain/repositories/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  final ApiClient client;

  BannerRepositoryImpl({required this.client});

  @override
  Future<ApiListResponse<BannerModel>> getBanners() async {
    Response response = await client.get(ApiEndpoints.banners);
    return ApiListResponse.fromJson(
      response.data,
      (json) => BannerModel.fromJson(json as Map<String, dynamic>),
    );
  }
}

import 'package:glasses/data/models/banner_model.dart';
import 'package:glasses/data/responses/api_list_response.dart';

abstract class BannerRepository {
  Future<ApiListResponse<BannerModel>> getBanners();
}

import 'package:glasses/core/usecase.dart';
import 'package:glasses/data/models/banner_model.dart';
import 'package:glasses/data/responses/api_list_response.dart';
import 'package:glasses/domain/entities/banner_entity.dart';
import 'package:glasses/domain/repositories/banner_repository.dart';

class FetchAllBannerUseCase extends UseCase<List<BannerEntity>> {
  final BannerRepository repository;

  FetchAllBannerUseCase({required this.repository});

  @override
  Future<List<BannerEntity>> exec() async {
    final ApiListResponse<BannerModel> results = await repository.getBanners();
    return results.items.map((e) => e.toEntity()).toList();
  }
}

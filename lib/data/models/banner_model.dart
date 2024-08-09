import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glasses/domain/entities/banner_entity.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  factory BannerModel({
    @JsonKey(name: 'banner_id') required int id,
    @JsonKey(name: 'banner_title') String? bannerTitle,
    @JsonKey(name: 'banner_thumbnail') required String thumbnail,
    @JsonKey(name: 'banner_mobile_thumbnail') String? mThumbnail,
    @JsonKey(name: 'banner_tablet_thumbnail') String? tThumbnail,
    @JsonKey(name: 'banner_destination_url') String? url,
    @JsonKey(name: 'banner_version') required String version,
    @JsonKey(name: 'banner_type') required String bannerType,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}

extension BannerModelMapper on BannerModel {
  BannerEntity toEntity() {
    return BannerEntity(
      id: id,
      title: bannerTitle,
      thumbnail:
          'https://glasses-storage.s3.ap-southeast-1.amazonaws.com/${mThumbnail ?? thumbnail}',
      url: url,
    );
  }
}

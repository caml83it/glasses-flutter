import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glasses/domain/entities/trademark_entity.dart';

part 'trademark_model.freezed.dart';
part 'trademark_model.g.dart';

@freezed
class TrademarkModel with _$TrademarkModel {
  factory TrademarkModel({
    @JsonKey(name: 'trademark_id') required int id,
    @JsonKey(name: 'trademark_name') required String name,
    @JsonKey(name: 'trademark_code') required String code,
    @JsonKey(name: 'trademark_description') required String description,
  }) = _TrademarkModel;

  factory TrademarkModel.fromJson(Map<String, dynamic> json) =>
      _$TrademarkModelFromJson(json);
}

extension TrademarkModelMapper on TrademarkModel {
  TrademarkEntity toEntity() {
    return TrademarkEntity(
      id: id,
      name: name,
      code: code,
      description: description,
    );
  }
}

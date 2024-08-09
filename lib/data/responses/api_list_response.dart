import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_list_response.freezed.dart';
part 'api_list_response.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class ApiListResponse<T> with _$ApiListResponse<T> {
  factory ApiListResponse({
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_items') required int totalElements,
    @Default([]) @JsonKey(name: 'items') List<T> items,
  }) = _ApiListResponse<T>;

  factory ApiListResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$ApiListResponseFromJson<T>(json, fromJsonT);
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wings_mobile/entities/product/product_entity.dart';

part 'history_entity.freezed.dart';
part 'history_entity.g.dart';

@freezed
class HistoryEntity with _$HistoryEntity {
  const factory HistoryEntity({
    required String uid,
    required String userId,
    required String createdAt,
    required List<ProductEntity> items,
  }) = _HistoryEntity;

  factory HistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$HistoryEntityFromJson(json);
}

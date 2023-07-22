// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryEntity _$$_HistoryEntityFromJson(Map<String, dynamic> json) =>
    _$_HistoryEntity(
      uid: json['uid'] as String,
      userId: json['userId'] as String,
      createdAt: json['createdAt'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HistoryEntityToJson(_$_HistoryEntity instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'items': instance.items,
    };

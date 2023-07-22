// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      productCode: json['productCode'] as String,
      dimension: json['dimension'] as String,
      currency: json['currency'] as String,
      discount: json['discount'] as int,
      price: json['price'] as int,
      productName: json['productName'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'productCode': instance.productCode,
      'dimension': instance.dimension,
      'currency': instance.currency,
      'discount': instance.discount,
      'price': instance.price,
      'productName': instance.productName,
      'unit': instance.unit,
    };

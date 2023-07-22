// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductEntity {
  String get productCode => throw _privateConstructorUsedError;
  String get dimension => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call(
      {String productCode,
      String dimension,
      String currency,
      int discount,
      int price,
      int qty,
      String productName,
      String unit});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCode = null,
    Object? dimension = null,
    Object? currency = null,
    Object? discount = null,
    Object? price = null,
    Object? qty = null,
    Object? productName = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$_ProductEntityCopyWith(
          _$_ProductEntity value, $Res Function(_$_ProductEntity) then) =
      __$$_ProductEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productCode,
      String dimension,
      String currency,
      int discount,
      int price,
      int qty,
      String productName,
      String unit});
}

/// @nodoc
class __$$_ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$_ProductEntity>
    implements _$$_ProductEntityCopyWith<$Res> {
  __$$_ProductEntityCopyWithImpl(
      _$_ProductEntity _value, $Res Function(_$_ProductEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCode = null,
    Object? dimension = null,
    Object? currency = null,
    Object? discount = null,
    Object? price = null,
    Object? qty = null,
    Object? productName = null,
    Object? unit = null,
  }) {
    return _then(_$_ProductEntity(
      productCode: null == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductEntity implements _ProductEntity {
  const _$_ProductEntity(
      {required this.productCode,
      required this.dimension,
      required this.currency,
      required this.discount,
      required this.price,
      this.qty = 0,
      required this.productName,
      required this.unit});

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductEntityFromJson(json);

  @override
  final String productCode;
  @override
  final String dimension;
  @override
  final String currency;
  @override
  final int discount;
  @override
  final int price;
  @override
  @JsonKey()
  final int qty;
  @override
  final String productName;
  @override
  final String unit;

  @override
  String toString() {
    return 'ProductEntity(productCode: $productCode, dimension: $dimension, currency: $currency, discount: $discount, price: $price, qty: $qty, productName: $productName, unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductEntity &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productCode, dimension, currency,
      discount, price, qty, productName, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      __$$_ProductEntityCopyWithImpl<_$_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductEntityToJson(
      this,
    );
  }
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity(
      {required final String productCode,
      required final String dimension,
      required final String currency,
      required final int discount,
      required final int price,
      final int qty,
      required final String productName,
      required final String unit}) = _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override
  String get productCode;
  @override
  String get dimension;
  @override
  String get currency;
  @override
  int get discount;
  @override
  int get price;
  @override
  int get qty;
  @override
  String get productName;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

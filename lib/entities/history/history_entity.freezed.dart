// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryEntity _$HistoryEntityFromJson(Map<String, dynamic> json) {
  return _HistoryEntity.fromJson(json);
}

/// @nodoc
mixin _$HistoryEntity {
  String get uid => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  List<ProductEntity> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryEntityCopyWith<HistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEntityCopyWith<$Res> {
  factory $HistoryEntityCopyWith(
          HistoryEntity value, $Res Function(HistoryEntity) then) =
      _$HistoryEntityCopyWithImpl<$Res, HistoryEntity>;
  @useResult
  $Res call(
      {String uid, String userId, String createdAt, List<ProductEntity> items});
}

/// @nodoc
class _$HistoryEntityCopyWithImpl<$Res, $Val extends HistoryEntity>
    implements $HistoryEntityCopyWith<$Res> {
  _$HistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryEntityCopyWith<$Res>
    implements $HistoryEntityCopyWith<$Res> {
  factory _$$_HistoryEntityCopyWith(
          _$_HistoryEntity value, $Res Function(_$_HistoryEntity) then) =
      __$$_HistoryEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid, String userId, String createdAt, List<ProductEntity> items});
}

/// @nodoc
class __$$_HistoryEntityCopyWithImpl<$Res>
    extends _$HistoryEntityCopyWithImpl<$Res, _$_HistoryEntity>
    implements _$$_HistoryEntityCopyWith<$Res> {
  __$$_HistoryEntityCopyWithImpl(
      _$_HistoryEntity _value, $Res Function(_$_HistoryEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? items = null,
  }) {
    return _then(_$_HistoryEntity(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryEntity implements _HistoryEntity {
  const _$_HistoryEntity(
      {required this.uid,
      required this.userId,
      required this.createdAt,
      required final List<ProductEntity> items})
      : _items = items;

  factory _$_HistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryEntityFromJson(json);

  @override
  final String uid;
  @override
  final String userId;
  @override
  final String createdAt;
  final List<ProductEntity> _items;
  @override
  List<ProductEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'HistoryEntity(uid: $uid, userId: $userId, createdAt: $createdAt, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryEntity &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, userId, createdAt,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryEntityCopyWith<_$_HistoryEntity> get copyWith =>
      __$$_HistoryEntityCopyWithImpl<_$_HistoryEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryEntityToJson(
      this,
    );
  }
}

abstract class _HistoryEntity implements HistoryEntity {
  const factory _HistoryEntity(
      {required final String uid,
      required final String userId,
      required final String createdAt,
      required final List<ProductEntity> items}) = _$_HistoryEntity;

  factory _HistoryEntity.fromJson(Map<String, dynamic> json) =
      _$_HistoryEntity.fromJson;

  @override
  String get uid;
  @override
  String get userId;
  @override
  String get createdAt;
  @override
  List<ProductEntity> get items;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryEntityCopyWith<_$_HistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

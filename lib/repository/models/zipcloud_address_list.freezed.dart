// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zipcloud_address_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZipcloudAddressList _$ZipcloudAddressListFromJson(Map<String, dynamic> json) {
  return _ZipcloudAddressList.fromJson(json);
}

/// @nodoc
mixin _$ZipcloudAddressList {
  @JsonKey(name: 'results')
  List<ZipcloudAddress> get list => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZipcloudAddressListCopyWith<ZipcloudAddressList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZipcloudAddressListCopyWith<$Res> {
  factory $ZipcloudAddressListCopyWith(
          ZipcloudAddressList value, $Res Function(ZipcloudAddressList) then) =
      _$ZipcloudAddressListCopyWithImpl<$Res, ZipcloudAddressList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<ZipcloudAddress> list, String? message});
}

/// @nodoc
class _$ZipcloudAddressListCopyWithImpl<$Res, $Val extends ZipcloudAddressList>
    implements $ZipcloudAddressListCopyWith<$Res> {
  _$ZipcloudAddressListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ZipcloudAddress>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZipcloudAddressListImplCopyWith<$Res>
    implements $ZipcloudAddressListCopyWith<$Res> {
  factory _$$ZipcloudAddressListImplCopyWith(_$ZipcloudAddressListImpl value,
          $Res Function(_$ZipcloudAddressListImpl) then) =
      __$$ZipcloudAddressListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<ZipcloudAddress> list, String? message});
}

/// @nodoc
class __$$ZipcloudAddressListImplCopyWithImpl<$Res>
    extends _$ZipcloudAddressListCopyWithImpl<$Res, _$ZipcloudAddressListImpl>
    implements _$$ZipcloudAddressListImplCopyWith<$Res> {
  __$$ZipcloudAddressListImplCopyWithImpl(_$ZipcloudAddressListImpl _value,
      $Res Function(_$ZipcloudAddressListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? message = freezed,
  }) {
    return _then(_$ZipcloudAddressListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ZipcloudAddress>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZipcloudAddressListImpl extends _ZipcloudAddressList {
  const _$ZipcloudAddressListImpl(
      {@JsonKey(name: 'results') final List<ZipcloudAddress> list = const [],
      this.message})
      : _list = list,
        super._();

  factory _$ZipcloudAddressListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZipcloudAddressListImplFromJson(json);

  final List<ZipcloudAddress> _list;
  @override
  @JsonKey(name: 'results')
  List<ZipcloudAddress> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'ZipcloudAddressList(list: $list, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZipcloudAddressListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZipcloudAddressListImplCopyWith<_$ZipcloudAddressListImpl> get copyWith =>
      __$$ZipcloudAddressListImplCopyWithImpl<_$ZipcloudAddressListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZipcloudAddressListImplToJson(
      this,
    );
  }
}

abstract class _ZipcloudAddressList extends ZipcloudAddressList {
  const factory _ZipcloudAddressList(
      {@JsonKey(name: 'results') final List<ZipcloudAddress> list,
      final String? message}) = _$ZipcloudAddressListImpl;
  const _ZipcloudAddressList._() : super._();

  factory _ZipcloudAddressList.fromJson(Map<String, dynamic> json) =
      _$ZipcloudAddressListImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<ZipcloudAddress> get list;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ZipcloudAddressListImplCopyWith<_$ZipcloudAddressListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

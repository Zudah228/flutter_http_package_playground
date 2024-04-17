// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zipcloud_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZipcloudAddress _$ZipcloudAddressFromJson(Map<String, dynamic> json) {
  return _ZipcloudAddress.fromJson(json);
}

/// @nodoc
mixin _$ZipcloudAddress {
  String get address1 => throw _privateConstructorUsedError;
  String get address2 => throw _privateConstructorUsedError;
  String get address3 => throw _privateConstructorUsedError;
  String get kana1 => throw _privateConstructorUsedError;
  String get kana2 => throw _privateConstructorUsedError;
  String get kana3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZipcloudAddressCopyWith<ZipcloudAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZipcloudAddressCopyWith<$Res> {
  factory $ZipcloudAddressCopyWith(
          ZipcloudAddress value, $Res Function(ZipcloudAddress) then) =
      _$ZipcloudAddressCopyWithImpl<$Res, ZipcloudAddress>;
  @useResult
  $Res call(
      {String address1,
      String address2,
      String address3,
      String kana1,
      String kana2,
      String kana3});
}

/// @nodoc
class _$ZipcloudAddressCopyWithImpl<$Res, $Val extends ZipcloudAddress>
    implements $ZipcloudAddressCopyWith<$Res> {
  _$ZipcloudAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = null,
    Object? address2 = null,
    Object? address3 = null,
    Object? kana1 = null,
    Object? kana2 = null,
    Object? kana3 = null,
  }) {
    return _then(_value.copyWith(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: null == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
      kana1: null == kana1
          ? _value.kana1
          : kana1 // ignore: cast_nullable_to_non_nullable
              as String,
      kana2: null == kana2
          ? _value.kana2
          : kana2 // ignore: cast_nullable_to_non_nullable
              as String,
      kana3: null == kana3
          ? _value.kana3
          : kana3 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZipcloudAddressImplCopyWith<$Res>
    implements $ZipcloudAddressCopyWith<$Res> {
  factory _$$ZipcloudAddressImplCopyWith(_$ZipcloudAddressImpl value,
          $Res Function(_$ZipcloudAddressImpl) then) =
      __$$ZipcloudAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address1,
      String address2,
      String address3,
      String kana1,
      String kana2,
      String kana3});
}

/// @nodoc
class __$$ZipcloudAddressImplCopyWithImpl<$Res>
    extends _$ZipcloudAddressCopyWithImpl<$Res, _$ZipcloudAddressImpl>
    implements _$$ZipcloudAddressImplCopyWith<$Res> {
  __$$ZipcloudAddressImplCopyWithImpl(
      _$ZipcloudAddressImpl _value, $Res Function(_$ZipcloudAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = null,
    Object? address2 = null,
    Object? address3 = null,
    Object? kana1 = null,
    Object? kana2 = null,
    Object? kana3 = null,
  }) {
    return _then(_$ZipcloudAddressImpl(
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: null == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String,
      address3: null == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String,
      kana1: null == kana1
          ? _value.kana1
          : kana1 // ignore: cast_nullable_to_non_nullable
              as String,
      kana2: null == kana2
          ? _value.kana2
          : kana2 // ignore: cast_nullable_to_non_nullable
              as String,
      kana3: null == kana3
          ? _value.kana3
          : kana3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZipcloudAddressImpl extends _ZipcloudAddress {
  const _$ZipcloudAddressImpl(
      {required this.address1,
      required this.address2,
      required this.address3,
      required this.kana1,
      required this.kana2,
      required this.kana3})
      : super._();

  factory _$ZipcloudAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZipcloudAddressImplFromJson(json);

  @override
  final String address1;
  @override
  final String address2;
  @override
  final String address3;
  @override
  final String kana1;
  @override
  final String kana2;
  @override
  final String kana3;

  @override
  String toString() {
    return 'ZipcloudAddress(address1: $address1, address2: $address2, address3: $address3, kana1: $kana1, kana2: $kana2, kana3: $kana3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZipcloudAddressImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.address3, address3) ||
                other.address3 == address3) &&
            (identical(other.kana1, kana1) || other.kana1 == kana1) &&
            (identical(other.kana2, kana2) || other.kana2 == kana2) &&
            (identical(other.kana3, kana3) || other.kana3 == kana3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, address1, address2, address3, kana1, kana2, kana3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZipcloudAddressImplCopyWith<_$ZipcloudAddressImpl> get copyWith =>
      __$$ZipcloudAddressImplCopyWithImpl<_$ZipcloudAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZipcloudAddressImplToJson(
      this,
    );
  }
}

abstract class _ZipcloudAddress extends ZipcloudAddress {
  const factory _ZipcloudAddress(
      {required final String address1,
      required final String address2,
      required final String address3,
      required final String kana1,
      required final String kana2,
      required final String kana3}) = _$ZipcloudAddressImpl;
  const _ZipcloudAddress._() : super._();

  factory _ZipcloudAddress.fromJson(Map<String, dynamic> json) =
      _$ZipcloudAddressImpl.fromJson;

  @override
  String get address1;
  @override
  String get address2;
  @override
  String get address3;
  @override
  String get kana1;
  @override
  String get kana2;
  @override
  String get kana3;
  @override
  @JsonKey(ignore: true)
  _$$ZipcloudAddressImplCopyWith<_$ZipcloudAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

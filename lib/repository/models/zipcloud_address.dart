// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'zipcloud_address.freezed.dart';
part 'zipcloud_address.g.dart';

@freezed
class ZipcloudAddress with _$ZipcloudAddress {
  const ZipcloudAddress._();

  const factory ZipcloudAddress({
    required String address1,
    required String address2,
    required String address3,
    required String kana1,
    required String kana2,
    required String kana3,
  }) = _ZipcloudAddress;

  factory ZipcloudAddress.fromJson(Map<String, dynamic> json) =>
      _$ZipcloudAddressFromJson(json);

  String get fullAddress => '$address1$address2$address3';
}

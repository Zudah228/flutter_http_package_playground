// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'zipcloud_address.dart';

part 'zipcloud_address_list.freezed.dart';
part 'zipcloud_address_list.g.dart';

@freezed
class ZipcloudAddressList with _$ZipcloudAddressList {
  const ZipcloudAddressList._();

  const factory ZipcloudAddressList({
    @JsonKey(name: 'results') @Default([]) List<ZipcloudAddress> list,
    String? message,
  }) = _ZipcloudAddressList;

  factory ZipcloudAddressList.fromJson(Map<String, dynamic> json) =>
      _$ZipcloudAddressListFromJson(json);

  ZipcloudAddress? get firstOrNull => list.firstOrNull;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zipcloud_address_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZipcloudAddressListImpl _$$ZipcloudAddressListImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ZipcloudAddressListImpl',
      json,
      ($checkedConvert) {
        final val = _$ZipcloudAddressListImpl(
          list: $checkedConvert(
              'results',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          ZipcloudAddress.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'list': 'results'},
    );

Map<String, dynamic> _$$ZipcloudAddressListImplToJson(
        _$ZipcloudAddressListImpl instance) =>
    <String, dynamic>{
      'results': instance.list.map((e) => e.toJson()).toList(),
      'message': instance.message,
    };

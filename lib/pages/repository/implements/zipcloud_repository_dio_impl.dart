import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../utils/ex/dio_response_ex.dart';
import '../../../repository/models/zipcloud_address_list.dart';
import '../../../repository/zipcloud_repository.dart';

class ZipcloudRepositoryDioImpl implements ZipcloudRepository {
  ZipcloudRepositoryDioImpl();

  final _dio = Dio(
    BaseOptions(
      validateStatus: (_) => true,
      baseUrl: ZipcloudRepository.baseUrl.toString(),
    ),
  );

  @override
  Future<ZipcloudAddressList> search({required String zipcode}) async {
    final response = await _dio.get(
      '/search',
      queryParameters: {
        'zipcode': zipcode,
      },
    );

    final body = jsonDecode(response.data) as Map<String, dynamic>;

    final results = ZipcloudAddressList.fromJson(body);

    if (!response.isSuccess) {
      throw Exception(results.message ?? '住所の取得に失敗しました');
    }

    return results;
  }
}

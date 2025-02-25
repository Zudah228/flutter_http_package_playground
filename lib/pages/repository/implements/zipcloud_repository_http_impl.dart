import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../utils/ex/http_response_ex.dart';
import '../../../repository/models/zipcloud_address_list.dart';
import '../../../repository/zipcloud_repository.dart';

class ZipcloudRepositoryHttpImpl implements ZipcloudRepository {
  http.Client _client() => http.Client();

  @override
  Future<ZipcloudAddressList> search({required String zipcode}) async {
    final client = _client();

    final response = await client.get(
      ZipcloudRepository.url(
        ['search'],
        queryParameters: {
          'zipcode': zipcode,
        },
      ),
    );

    final body = jsonDecode(response.body) as Map<String, dynamic>;

    final results = ZipcloudAddressList.fromJson(body);

    if (!response.isSuccess) {
      throw Exception(results.message ?? '住所の取得に失敗しました');
    }

    return results;
  }
}

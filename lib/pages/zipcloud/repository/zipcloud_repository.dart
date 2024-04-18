import 'package:path/path.dart' as p;

import '../models/zipcloud_address_list.dart';

abstract class ZipcloudRepository {
  static const _authority = 'zipcloud.ibsnet.co.jp';
  static Uri get baseUrl => url([]);

  static Uri url(
    Iterable<String> pathSegments, {
    Map<String, dynamic>? queryParameters,
  }) {
    final uri = p.joinAll(['api', ...pathSegments]);
    return Uri.https(_authority, uri, queryParameters);
  }

  Future<ZipcloudAddressList> search({
    required String zipcode,
  });
}

enum ZipcloudRepositoryImplements {
  http,
  dio,
  ;
}

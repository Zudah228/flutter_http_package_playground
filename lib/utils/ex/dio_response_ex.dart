import 'package:dio/dio.dart' as dio;

extension DioResponseX on dio.Response {
  bool get isSuccess => switch (statusCode) {
        == null => throw StateError('dio.Response に statusCode が設定されていま線'),
        >= 200 && < 300 => true,
        _ => false,
      };
}

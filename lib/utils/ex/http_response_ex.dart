import 'package:http/http.dart' as http;

extension HttpResponseX on http.Response {
  bool get isSuccess => statusCode >= 200 && statusCode < 300;
}

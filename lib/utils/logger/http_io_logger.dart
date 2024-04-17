import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'logger.dart';

abstract class HttpIOLogger<Req extends Object, Res extends Object> {
  const HttpIOLogger._();

  static HttpLibLogger get http => HttpLibLogger.instance;
  static DioLogger get dio => DioLogger.instance;

  void onRequest(Req request) {}
  void onResponse(Res request) {}

  @protected
  String bodyToMessage(dynamic body) {
    if (body is Map) {
      return const JsonEncoder.withIndent('  ').convert(body);
    }

    return body.toString();
  }
}

class HttpLibLogger extends HttpIOLogger<http.BaseRequest, http.Response> {
  const HttpLibLogger._() : super._();

  static const instance = HttpLibLogger._();

  @override
  void onRequest(http.BaseRequest request) {
    String message = 'リクエストの開始\n';

    message += 'baseUrl: ${request.url}\n';
    message += 'method: ${request.method}\n';
    message += 'headers: ${request.headers}\n';

    if (request is http.Request) {
      message += 'body: ${jsonDecode(request.body)}\n';
    }

    logger.debug(message);
  }

  @override
  void onResponse(http.Response request) {
    // TODO: implement onResponse
  }
}

class DioLogger extends HttpIOLogger<dio.RequestOptions, dio.Response> {
  const DioLogger._() : super._();
  static const instance = DioLogger._();

  @override
  void onRequest(dio.RequestOptions request) {
    String message = 'リクエストの開始\n';

    message += 'baseUrl: ${request.uri}\n';
    message += 'method: ${request.method}\n';
    message += 'headers: ${request.headers}\n';

    if (request is http.Request) {
      message += 'body: ${request.data}\n';
    }

    logger.debug(message);
    logger.debug(message);
  }

  @override
  void onResponse(dio.Response request) {
    // TODO: implement onResponse
  }
}
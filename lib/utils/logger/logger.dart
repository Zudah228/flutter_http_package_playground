import 'dart:developer' as developer;

import 'package:logger/logger.dart';

MyLogger get logger => MyLogger.instance;

class MyLogger {
  MyLogger._();

  static final instance = MyLogger._();

  final _logger = Logger(
    output: MultiOutput([
      DeveloperConsoleOutput(),
    ]),
    filter: ProductionFilter(),
  );

  void debug(
    dynamic message,
  ) {
    _logger.d(message);
  }

  void info(dynamic message) {
    _logger.i(message);
  }
  void warn(
    dynamic message,
  ) {
    _logger.w(message);
  }

  void error(dynamic message, [Object? error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}

class DeveloperConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    final StringBuffer buffer = StringBuffer();
    event.lines.forEach(buffer.writeln);
    developer.log(buffer.toString());
  }
}

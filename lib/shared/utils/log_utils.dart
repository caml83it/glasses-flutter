import 'package:flutter/foundation.dart';

class LogUtils {
  static const String kTag = "GLASSES";

  LogUtils();

  static void methodIn({String message = ""}) {
    _outputLog(Level.trace, '[S]${_outputMessage(message)}');
  }

  static void methodOut({String message = ""}) {
    _outputLog(Level.trace, '[N]${_outputMessage(message)}');
  }

  static void d(String msg) {
    _outputLog(Level.debug, _outputMessage(msg));
  }

  static void i(String msg) {
    _outputLog(Level.info, _outputMessage(msg));
  }

  static void w(String msg) {
    _outputLog(Level.warn, _outputMessage(msg));
  }

  static void e(String msg) {
    _outputLog(Level.error, _outputMessage(msg));
  }

  static void _outputLog(Level level, String msg) {
    String msgOut = msg;
    switch (level) {
      case Level.error:
        msgOut = 'E/$msg';
        break;
      case Level.warn:
        msgOut = 'W/$msg';
        break;
      case Level.info:
        msgOut = 'I/$msg';
        break;
      case Level.debug:
        msgOut = 'D/$msg';
        break;
      case Level.trace:
        msgOut = 'T/$msg';
        break;
      default:
        break;
    }

    debugPrint('[$kTag]:$msgOut');
  }

  static String _outputMessage(String msg) {
    String stackTrace = StackTrace.current.toString();
    // スタックトレースから情報を取得 // 0: LogUtils._outputMessage, 1: LogUtils.e, 2: 呼び出し元
    String topStack = stackTrace.split("#2")[1];
    String fileInfo = topStack
        .substring(topStack.indexOf("package"), topStack.indexOf(")"))
        .trim();
    String methodName = topStack.substring(0, topStack.indexOf("(")).trim();
    return '[$methodName]::$msg  <$fileInfo>';
  }
}

enum Level { error, warn, info, debug, trace }

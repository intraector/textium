// ignore_for_file: unnecessary_lambdas

import 'dart:convert';
import 'dart:developer' as dev;

import 'extensions/int.dart';
import 'text_color.dart';

class Log {
  factory Log() => _instance;

  Log._();

  static final _instance = Log._();

  ///[stackTrace] parameter can be either stackTrace or label
  static void error(
    dynamic error, [
    Object? stackTrace,
    String? label,
  ]) {
    String? label0;
    if (label == null) {
      if (stackTrace is String) label0 = stackTrace;
    } else {
      label0 = ' $label ';
    }
    if (error is String) {
      if (label0 == null) {
        label0 = '';
      } else {
        label0 = TextColor.backRed(TextColor.black(' $label0 '));
      }
      final output = TextColor.red(error);
      dev.log(
        '$label0 $output',
        stackTrace: stackTrace is StackTrace ? stackTrace : null,
        name: 'ϟ',
      );
    } else {
      if (label0 == null) {
        label0 = '';
      } else {
        label0 = TextColor.backRedBright(TextColor.black(' $label0 '));
      }
      final output = TextColor.red(error);
      dev.log(
        '$label0 $output',
        stackTrace: stackTrace is StackTrace ? stackTrace : null,
        name: 'ϟ',
      );
    }
  }

  static String toJson(Object? data) {
    final encoder = JsonEncoder.withIndent(
      '  ',
      (value) => _shortenString(value.toString()),
    );
    return encoder.convert(data);
  }

  static void g(Object? data, {String? label}) {
    _logWithColor(TextColor.green, toJson(data), label);
  }

  static void y(Object? data, {String? label}) {
    _logWithColor(TextColor.yellow, toJson(data), label);
  }

  static void c(Object? data, {String? label}) {
    _logWithColor(TextColor.cyan, toJson(data), label);
  }

  static void r(Object? data, {String? label}) {
    _logWithColor(TextColor.red, toJson(data), label);
  }

  static void w(Object? data, {String? label}) {
    _logWithColor(TextColor.white, toJson(data), label);
  }

  static void m(Object? data, {String? label}) {
    _logWithColor(TextColor.magenta, toJson(data), label);
  }

  static void _logWithColor(TextColor color, String output, String? label) {
    var label0 = label;
    if (label0 == null) {
      label0 = '';
    } else {
      label0 = color.backFill(
        TextColor.black(' $label0 ', bold: true),
      );
    }
    dev.log('$label0 ${color(output)}', name: 'ϟ');
  }
}

String _shortenString(String text) {
  if (text.length < 350) {
    return text;
  } else if (text.length >= 350 && text.length < 1024) {
    return '${text.substring(0, 350)}...';
  } else {
    final bytes = utf8.encode(text);
    return '${text.substring(0, 80)}... ${bytes.length.toKb} Kb';
  }
}


import 'dart:async';

import 'package:flutter/services.dart';

class FlutterRequest {
  static const MethodChannel _channel =
      const MethodChannel('flutter_request');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

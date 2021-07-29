
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterHome {
  static const MethodChannel _channel =
      const MethodChannel('flutter_home');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

import 'dart:async';

import 'package:flutter/services.dart';

class ShareFile {
  static const MethodChannel _channel = const MethodChannel('share_file');

  static Future<String> open(String filePath) async {
    final map = <String, String>{"file_path": filePath};
    return await _channel.invokeMethod('open_file', map);
  }

  static Future<String> getDeviceId() {
    return _channel.invokeMethod('device_id');
  }
}

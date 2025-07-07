import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform;

class PlatformUtils {
  static String getApiHost() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return '10.0.2.2'; // Android emulator
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return '127.0.0.1'; // iOS simulator
    } else if (defaultTargetPlatform == TargetPlatform.windows ||
               defaultTargetPlatform == TargetPlatform.macOS ||
               defaultTargetPlatform == TargetPlatform.linux) {
      return '127.0.0.1';
    } else {
      return '127.0.0.1';
    }
  }
}
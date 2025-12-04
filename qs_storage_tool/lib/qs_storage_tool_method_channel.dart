import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'qs_storage_tool_platform_interface.dart';

/// An implementation of [QsStorageToolPlatform] that uses method channels.
class MethodChannelQsStorageTool extends QsStorageToolPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('qs_storage_tool');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'qs_storage_tool_method_channel.dart';

abstract class QsStorageToolPlatform extends PlatformInterface {
  /// Constructs a QsStorageToolPlatform.
  QsStorageToolPlatform() : super(token: _token);

  static final Object _token = Object();

  static QsStorageToolPlatform _instance = MethodChannelQsStorageTool();

  /// The default instance of [QsStorageToolPlatform] to use.
  ///
  /// Defaults to [MethodChannelQsStorageTool].
  static QsStorageToolPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QsStorageToolPlatform] when
  /// they register themselves.
  static set instance(QsStorageToolPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

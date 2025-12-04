import 'package:flutter_test/flutter_test.dart';
import 'package:qs_storage_tool/qs_storage_tool.dart';
import 'package:qs_storage_tool/qs_storage_tool_platform_interface.dart';
import 'package:qs_storage_tool/qs_storage_tool_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockQsStorageToolPlatform
    with MockPlatformInterfaceMixin
    implements QsStorageToolPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final QsStorageToolPlatform initialPlatform = QsStorageToolPlatform.instance;

  test('$MethodChannelQsStorageTool is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelQsStorageTool>());
  });

  test('getPlatformVersion', () async {
    QsStorageTool qsStorageToolPlugin = QsStorageTool();
    MockQsStorageToolPlatform fakePlatform = MockQsStorageToolPlatform();
    QsStorageToolPlatform.instance = fakePlatform;

    expect("0", '42');
  });
}

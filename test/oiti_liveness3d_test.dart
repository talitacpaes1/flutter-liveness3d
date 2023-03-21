import 'package:flutter_test/flutter_test.dart';
import 'package:oiti_liveness3d/oiti_liveness3d.dart';
import 'package:oiti_liveness3d/oiti_liveness3d_platform_interface.dart';
import 'package:oiti_liveness3d/oiti_liveness3d_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOitiLiveness3dPlatform
    with MockPlatformInterfaceMixin
    implements OitiLiveness3dPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OitiLiveness3dPlatform initialPlatform = OitiLiveness3dPlatform.instance;

  test('$MethodChannelOitiLiveness3d is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOitiLiveness3d>());
  });

  test('getPlatformVersion', () async {
    OitiLiveness3d oitiLiveness3dPlugin = OitiLiveness3d();
    MockOitiLiveness3dPlatform fakePlatform = MockOitiLiveness3dPlatform();
    OitiLiveness3dPlatform.instance = fakePlatform;

    expect(await oitiLiveness3dPlugin.getPlatformVersion(), '42');
  });
}

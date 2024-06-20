import 'package:flutter_test/flutter_test.dart';
import 'package:kidpech_webapp/kidpech_webapp.dart';
import 'package:kidpech_webapp/kidpech_webapp_platform_interface.dart';
import 'package:kidpech_webapp/kidpech_webapp_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockKidpechWebappPlatform
    with MockPlatformInterfaceMixin
    implements KidpechWebappPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final KidpechWebappPlatform initialPlatform = KidpechWebappPlatform.instance;

  test('$MethodChannelKidpechWebapp is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelKidpechWebapp>());
  });

  test('getPlatformVersion', () async {
    KidpechWebapp kidpechWebappPlugin = KidpechWebapp();
    MockKidpechWebappPlatform fakePlatform = MockKidpechWebappPlatform();
    KidpechWebappPlatform.instance = fakePlatform;

    expect(await kidpechWebappPlugin.getPlatformVersion(), '42');
  });
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kidpech_webapp/kidpech_webapp_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelKidpechWebapp platform = MethodChannelKidpechWebapp();
  const MethodChannel channel = MethodChannel('kidpech_webapp');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

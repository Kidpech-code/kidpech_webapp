import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'kidpech_webapp_platform_interface.dart';

/// An implementation of [KidpechWebappPlatform] that uses method channels.
class MethodChannelKidpechWebapp extends KidpechWebappPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('kidpech_webapp');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

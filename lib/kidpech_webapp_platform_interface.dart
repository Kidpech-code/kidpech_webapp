import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'kidpech_webapp_method_channel.dart';

abstract class KidpechWebappPlatform extends PlatformInterface {
  /// Constructs a KidpechWebappPlatform.
  KidpechWebappPlatform() : super(token: _token);

  static final Object _token = Object();

  static KidpechWebappPlatform _instance = MethodChannelKidpechWebapp();

  /// The default instance of [KidpechWebappPlatform] to use.
  ///
  /// Defaults to [MethodChannelKidpechWebapp].
  static KidpechWebappPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [KidpechWebappPlatform] when
  /// they register themselves.
  static set instance(KidpechWebappPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

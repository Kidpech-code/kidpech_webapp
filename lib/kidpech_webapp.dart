
import 'kidpech_webapp_platform_interface.dart';

class KidpechWebapp {
  Future<String?> getPlatformVersion() {
    return KidpechWebappPlatform.instance.getPlatformVersion();
  }
}

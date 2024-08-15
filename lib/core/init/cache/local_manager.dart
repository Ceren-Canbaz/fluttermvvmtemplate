import 'package:shared_preferences/shared_preferences.dart';

class LocalManager {
  static LocalManager? _instance;
  SharedPreferences? _preferences;
  static LocalManager get instance {
    _instance ??= LocalManager._init();
    return _instance!;
  }

  LocalManager._init() {
    preferencesInit();
  }
  static preferencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
    return;
  }
}

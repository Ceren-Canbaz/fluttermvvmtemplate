import 'package:fluttermvvmtemplate/core/constants/enums/preferences_keys.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LocalManager {
  static LocalManager? _instance;
  SharedPreferences? _preferences;
  static LocalManager get instance => _instance!;

  LocalManager._init() {
    preferencesInit();
  }

  static preferencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
    return;
  }

  Future<void> setStringValue(PreferencesKey key, String value) async {
    await _preferences!.setString(key.toString(), value);
  }

  String getStringValue(PreferencesKey key) =>
      _preferences?.getString(key.toString()) ?? "";
}

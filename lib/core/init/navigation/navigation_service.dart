import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance {
    return _instance;
  }

  NavigationService._init();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<void> navigateToPath(String path, Object object) async {
    await navigatorKey.currentState?.pushNamed(path, arguments: object);
  }
}

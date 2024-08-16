import 'package:flutter/material.dart';
import 'navigation_service.dart';

class AppNavigation implements NavigationService {
  static final AppNavigation _instance = AppNavigation._init();
  static AppNavigation get instance {
    return _instance;
  }

  AppNavigation._init();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  bool removeAllRoutes(Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage(
      {required String path, required Object data}) async {
    await navigatorKey.currentState?.pushNamed(path, arguments: data);
  }

  @override
  Future<void> navigateToPageClear(
      {required String path, required Object data}) async {
    await navigatorKey.currentState
        ?.pushNamedAndRemoveUntil(path, removeAllRoutes, arguments: data);
  }
}

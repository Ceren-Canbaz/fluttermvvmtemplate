import 'package:flutter/material.dart';
import '../../components/card/not_found_navigation.dart';
import '../../constants/navigation/navigator_constants.dart';

///TODO: fix this app Dependency /view
import 'package:fluttermvvmtemplate/view/authenticate/test/view/test_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance {
    return _instance;
  }

  NavigationRoute._init();
  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigatorConstants.TEST_VIEW:
        return navigate(const TestView());
      default:
        return navigate(const NotFoundNavigationWidget());
    }
  }

  MaterialPageRoute navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

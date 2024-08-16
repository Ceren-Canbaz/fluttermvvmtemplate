import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'core/constants/app/app_constants.dart';
import 'core/init/cache/local_manager.dart';
import 'core/init/lang/language_manager.dart';
import 'core/init/navigation/app_navigation.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'view/authenticate/test/view/test_view.dart';
import 'package:provider/provider.dart';

void main() {
  LocalManager.preferencesInit(); //initialize sga
  runApp(MultiProvider(
    providers: [...ApplicationProvider.instance.dependItems],
    child: EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,

      ///which languages are supported
      path: ApplicationConstants.LANG_ASSET_PATH,
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      home: const TestView(),
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: AppNavigation.instance.navigatorKey,
    );
  }
}

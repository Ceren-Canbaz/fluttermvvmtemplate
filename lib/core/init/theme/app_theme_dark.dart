import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'green_theme.dart';

class AppThemeDark extends AppTheme {
  static AppThemeDark? _instance;
  static AppThemeDark get instance {
    _instance ??= AppThemeDark._init();
    return _instance!;
  }

  AppThemeDark._init();
  @override
  ThemeData get theme => darkGreenTheme;
}

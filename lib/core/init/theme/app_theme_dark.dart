import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/theme/app_theme.dart';
import 'package:fluttermvvmtemplate/core/init/theme/green_theme.dart';

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

// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const String FONT_FAMILY = "Poppins";
final ThemeData greenThemeLight = ThemeData(
  fontFamily: FONT_FAMILY,
  primarySwatch: Colors.teal,
  brightness: Brightness.light,
  primaryColor: const Color(0xff009688),
  primaryColorLight: const Color(0xffb2dfdb),
  primaryColorDark: const Color(0xff00796b),
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: const Color(0xfffafafa),
  cardColor: const Color(0xffffffff),
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),
  unselectedWidgetColor: const Color(0x8a000000),
  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: const Color(0xffe0f2f1),
  dialogBackgroundColor: const Color(0xffffffff),
  indicatorColor: const Color(0xff009688),
  hintColor: const Color(0x8a000000),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffe0e0e0),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: Color(0xff009688),
      secondary: Color(0xff009688),
      surface: Color(0xffffffff),
      background: Color(0xff80cbc4),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Color(0x8a000000),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0x8a000000),
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0x8a000000),
      fontSize: 20,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0x8a000000),
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xdd000000),
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xdd000000),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xdd000000),
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xdd000000),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: Color(0xde000000),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d009688),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
);

final ThemeData darkGreenTheme = ThemeData(
  primarySwatch: Colors.teal,
  brightness: Brightness.dark,
  primaryColor: const Color(0xff004d40),
  primaryColorLight: const Color(0xff00332c),
  primaryColorDark: const Color(0xff00332c),
  canvasColor: const Color(0xff303030),
  scaffoldBackgroundColor: const Color(0xff303030),
  cardColor: const Color(0xff424242),
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),
  unselectedWidgetColor: const Color(0x8aeeeeee),
  disabledColor: const Color(0x61000000),
  secondaryHeaderColor: const Color(0xff004d40),
  dialogBackgroundColor: const Color(0xff424242),
  indicatorColor: const Color(0xff004d40),
  hintColor: const Color(0x8aeeeeee),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xff616161),
    disabledColor: Color(0x61000000),
    highlightColor: Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: Color(0xff004d40),
      secondary: Color(0xff004d40),
      surface: Color(0xff424242),
      background: Color(0xff303030),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xffffffff),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.dark,
    ),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    headlineMedium: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headlineSmall: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: 20,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    titleLarge: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    titleSmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodySmall: TextStyle(
      color: Color(0xffffffff),
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0x99eeeeee),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0x80ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.dark,
    deleteIconColor: Color(0xdeffffff),
    disabledColor: Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xdeffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: TextStyle(
      color: Color(0x3dffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0x3d004d40),
    selectedColor: Color(0x3dffffff),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
);

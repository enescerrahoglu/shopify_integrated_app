import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopify_integrated_app/core/utils/theme/color_schemes.g.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: const Color(0xFFF2F2F6),
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Color(0xFFF2F2F6)),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: const Color(0xFF000000)),
    bodyMedium: TextStyle(color: const Color(0xFF000000)),
    bodySmall: TextStyle(color: const Color(0xFF000000)),
    titleLarge: TextStyle(color: const Color(0xFF000000)),
    titleMedium: TextStyle(color: const Color(0xFF000000)),
    titleSmall: TextStyle(color: const Color(0xFF000000)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerHelpStyle: const TextStyle(fontSize: 16),
    headerHeadlineStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    headerForegroundColor: const Color(0xFF96BF48),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  dialogTheme: DialogThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF2F2F6),
    foregroundColor: Color(0xFF000000),
    surfaceTintColor: Colors.transparent,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color(0xFFFFFFFF),
    hintStyle: TextStyle(color: Color(0xFF999999)),
    labelStyle: TextStyle(color: Color(0xFF999999)),
  ),
  cupertinoOverrideTheme: const CupertinoThemeData().copyWith(),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: const Color(0xFF1C1C1E),
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Color(0xFF1C1C1E)),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: const Color(0xFFFFFFFF)),
    bodyMedium: TextStyle(color: const Color(0xFFFFFFFF)),
    bodySmall: TextStyle(color: const Color(0xFFFFFFFF)),
    titleLarge: TextStyle(color: const Color(0xFFFFFFFF)),
    titleMedium: TextStyle(color: const Color(0xFFFFFFFF)),
    titleSmall: TextStyle(color: const Color(0xFFFFFFFF)),
  ),
  datePickerTheme: DatePickerThemeData(
    headerHelpStyle: const TextStyle(fontSize: 16),
    headerHeadlineStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    headerForegroundColor: const Color(0xFF96BF48),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  dialogTheme: DialogThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1C1C1E),
    foregroundColor: Color(0xFFFFFFFF),
    surfaceTintColor: Colors.transparent,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color(0xFF2C2C2E),
    hintStyle: TextStyle(color: Color(0xFF565658)),
    labelStyle: TextStyle(color: Color(0xFF565658)),
  ),
  cupertinoOverrideTheme: const CupertinoThemeData().copyWith(),
);

extension type const ChooseThemeMode(String themeMode) {
  ThemeMode get getThemeMode => switch (themeMode) {
    'light' => ThemeMode.light,
    'dark' => ThemeMode.dark,
    _ => ThemeMode.system,
  };
}

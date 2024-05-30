import 'package:flutter/material.dart';
import 'package:social/core/theme/colors.dart';

class ApplicationTheme {
  static final lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    scaffoldBackgroundColor: CustomColors.lightColor,
    bottomSheetTheme:const BottomSheetThemeData(
      surfaceTintColor: Colors.transparent,
       backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
  );

  static final darkTheme = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    bottomSheetTheme: const BottomSheetThemeData(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
  );
}

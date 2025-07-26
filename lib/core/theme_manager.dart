import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';

class ThemeManager {
  static ThemeData get darkMode {
    return ThemeData(
        scaffoldBackgroundColor: AppColor.primaryColor,
        fontFamily: 'Janna',
        appBarTheme: AppBarTheme(backgroundColor: AppColor.primaryColor,foregroundColor: AppColor.fontColor,centerTitle: true),
        textTheme: TextTheme(
          labelSmall: TextStyle(
              color: AppColor.fontColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
          headlineSmall: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(color: AppColor.fontColor, fontSize: 20),
          headlineMedium: TextStyle(
              fontSize: 24,
              color: AppColor.fontColor,
              fontWeight: FontWeight.w700),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColor.fontColor,
            selectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Colors.white),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed));
  }
}

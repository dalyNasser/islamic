import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/core/app_const.dart';
import 'package:islamic/screen/Sebha/sebha_screen.dart';
import 'package:islamic/screen/hadith/hadith_screen.dart';
import 'package:islamic/screen/quran/quran_screen.dart';
import 'package:islamic/screen/radio/radio_screen.dart';
import 'package:islamic/screen/time/time_screen.dart';
import 'package:islamic/widget/back_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
List<Widget> Body= const [
  QuranScreen(),
  HadithScreen(),
  SebhaScreen(),
  RadioScreen(),
  TimeScreen()
];
List<String> backImage=[
  AppAsset.home_background,
  AppAsset.hadith_background,
  AppAsset.sebha_background,
  AppAsset.radio_background,
  AppAsset.time_background,
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        items: AppConst.bottom,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
      ),
      body: screensBackground(backgroundImg: backImage[_selectedIndex], body: Body[_selectedIndex]));

  }}


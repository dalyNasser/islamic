import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_string.dart';

abstract class AppConst {
  static List<BottomNavigationBarItem> bottom = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset(
          AppAsset.ic_quran,
          width: 19,
          height: 22,
        ),
        label: AppString.quran,
        activeIcon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
          decoration: const BoxDecoration(
              color: Colors.black38,

              borderRadius: BorderRadius.all(Radius.circular(66))),
          child: SvgPicture.asset(
            AppAsset.ic_quran,
            width: 19,
            height: 22,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        )),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AppAsset.ic_hadeth,
        width: 19,
        height: 22,
      ),
      label: AppString.hadith,
  activeIcon: Container(
  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
  decoration: const BoxDecoration(
  color: Colors.black38,

  borderRadius: BorderRadius.all(Radius.circular(66))),
  child: SvgPicture.asset(
  AppAsset.ic_hadeth,
  width: 19,
  height: 22,
  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  ),
  )
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AppAsset.ic_sebha,
        width: 19,
        height: 22,
      ),
      label: AppString.subhaa,
  activeIcon: Container(
  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
  decoration: const BoxDecoration(
  color: Colors.black38,

  borderRadius: BorderRadius.all(Radius.circular(66))),
  child: SvgPicture.asset(
  AppAsset.ic_sebha,
  width: 19,
  height: 22,
  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  ),
  )
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AppAsset.ic_radio,
        width: 19,
        height: 22,
      ),
      label: AppString.radio,
  activeIcon: Container(
  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
  decoration: const BoxDecoration(
  color: Colors.black38,

  borderRadius: BorderRadius.all(Radius.circular(66))),
  child: SvgPicture.asset(
  AppAsset.ic_radio,
  width: 19,
  height: 22,
  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  ),
  )
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        AppAsset.ic_time,
        width: 19,
        height: 22,
      ),
      label: AppString.time,
  activeIcon: Container(
  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
  decoration: const BoxDecoration(
  color: Colors.black38,

  borderRadius: BorderRadius.all(Radius.circular(66))),
  child: SvgPicture.asset(
  AppAsset.ic_time,
  width: 19,
  height: 22,
  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  ),
  )
    ),
  ];
}

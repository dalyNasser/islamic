import 'package:flutter/material.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/core/app_const.dart';
import 'package:islamic/model/onboardin_model.dart';
import 'package:islamic/screen/Sebha/sebha_screen.dart';
import 'package:islamic/screen/hadith/hadith_screen.dart';
import 'package:islamic/screen/home/home_screen.dart';
import 'package:islamic/screen/radio/radio_screen.dart';
import 'package:islamic/screen/start/onBoarding/stack_islmic.dart';
import 'package:islamic/screen/time/time_screen.dart';

class screensBackground extends StatelessWidget {
  const screensBackground({
    super.key,
    required this.backgroundImg, required this.body,
  });
  final String backgroundImg;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppColor.primaryColor_trnas,
              image: DecorationImage(
                image: AssetImage(backgroundImg),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.decal,
                colors: [
                  AppColor.primaryColor_trnas,
                  AppColor.primaryColor_trnas,
                  AppColor.primaryColor_trnas,
                ],
              ),
            ),

            child:Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.only(top: 150),

                child: body)
          ),
          Positioned(top:20, child:  StackIslamic()),
        ],

    );
  }
}

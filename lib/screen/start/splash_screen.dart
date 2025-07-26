import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/route_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),()=>Navigator.pushReplacementNamed(context, RouteApp.onBoardingScreen));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppAsset.splashBackground,
            ),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 57,
              child: Image.asset(
                AppAsset.splashBackgroundTop,
                width: 291,
                height: 157,
              ),
            ), Positioned(
              top: 214,
              left: 0,
              child: Image.asset(
                AppAsset.splashBackgroundRight,
                width: 87,
                height: 187,
              ),
            ),
        Positioned(
              top: 504,
              right: 0,
              child: Image.asset(
                AppAsset.splashBackgroundLeft,
                width: 101,
                height: 216,
              ),
            ),  Positioned(
              top: 314,
              right: 60,
              left: 60,
              child: Image.asset(
                AppAsset.splashBackgroundCenter,
                width: 173,
                height: 154,
              ),
            ),Positioned(
              top: 469,
              right: 60,
              left: 60,
              child: Image.asset(
                AppAsset.islami,
                width: 133,
                height: 70,
              ),
            ),Positioned(
              bottom: 20,
              right: 60,
              left: 60,
              child: Image.asset(
                AppAsset.splashBackgroundBottom,
                width: 180,
                height: 76,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

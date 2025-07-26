import 'package:islamic/screen/home/home_screen.dart';
import 'package:islamic/screen/quran/surah_screen.dart';
import 'package:islamic/screen/start/onBoarding/onboarding_screen.dart';
import 'package:islamic/screen/start/splash_screen.dart';

abstract class RouteApp{

  static const String splashScreen='/splashScreen';
  static const String homeScreen='/HomeScreen';
  static const String onBoardingScreen='/onBoardingScreen';
  static const String surahScreen='/surahScreen';
  static final  Routs={
  splashScreen:(context)=>const SplashScreen(),
    onBoardingScreen:(context)=>const OnboardingScreen(),
  homeScreen:(context)=>const HomeScreen(),
    surahScreen:(context)=>const SurahScreen(),


  };

}
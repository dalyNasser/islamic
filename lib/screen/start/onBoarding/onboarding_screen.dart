import 'package:flutter/material.dart';
import 'package:islamic/model/onboardin_model.dart';
import 'package:islamic/screen/start/onBoarding/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: OnboardingModel.serviceItems.length,
        itemBuilder: (BuildContext context, int index) {
          return OnboardingWidget(
            item: OnboardingModel.serviceItems[index],
            pController: pageController,
            index: index,
          );
        },
      ),
    );
  }
}

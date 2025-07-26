import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_string.dart';

class OnboardingModel{
  final String serviceName;
  final String? serviceDescribe;
  final String serviceImage;

  OnboardingModel(this.serviceName, this.serviceDescribe, this.serviceImage);
  static  List<OnboardingModel>  serviceItems=[
    OnboardingModel(AppString.welcome, '', AppAsset.onboardinWelcome),
    OnboardingModel(AppString.welcome, AppString.q1, AppAsset.onboardinKabba),
    OnboardingModel(AppString.readinQuran, AppString.readinQuranDesc, AppAsset.onboardinQuran),
    OnboardingModel(AppString.subha, AppString.subhaDesc, AppAsset.onboardinSubha),
    OnboardingModel(AppString.radio_ser, AppString.radioDesc, AppAsset.onboardinRadio)
  ];
}
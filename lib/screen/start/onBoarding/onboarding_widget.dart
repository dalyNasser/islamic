import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/core/app_string.dart';
import 'package:islamic/core/route_app.dart';
import 'package:islamic/model/onboardin_model.dart';
import 'package:islamic/screen/start/onBoarding/stack_islmic.dart';
import 'package:islamic/widget/text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget(
      {super.key,
      required this.item,
      required this.pController,
      required this.index});
  final OnboardingModel item;
  final PageController pController;
  final int index;

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}
class _OnboardingWidgetState extends State<OnboardingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackIslamic(),
          Image.asset(
            widget.item.serviceImage,
            width: 398,
            height: 415,
          ),
          TextWidget(
           text: widget.item.serviceName,
            text_style: Theme.of(context).textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.item.serviceDescribe ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.index != 0
                    ? TextWidget(
                        ontap: () => widget.pController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                        ),
                        text: AppString.back,
                        text_style: Theme.of(context).textTheme.labelSmall,
                      )
                    : const SizedBox.shrink(),
                SmoothPageIndicator(
                  controller: widget.pController, // PageController
                  count: OnboardingModel.serviceItems.length,

                  axisDirection: Axis.horizontal,
                  effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: AppColor.fontColor,
                      dotHeight: 7,
                      dotWidth: 7),
                ),
                widget.index != OnboardingModel.serviceItems.length - 1
                    ? TextWidget(
                        ontap: () => widget.pController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                        ),
                        text: AppString.next,
                        text_style: Theme.of(context).textTheme.labelSmall,
                      )
                    : TextWidget(
                  ontap:()=> Navigator.pushReplacementNamed(context,RouteApp.homeScreen),
                        text: AppString.finish,
                        text_style: Theme.of(context).textTheme.labelSmall,
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/model/athkar_model.dart';
import 'package:islamic/model/time_model.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColor.timeColor,
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 29, left: 36, child: Image.asset(AppAsset.c_left)),
              Positioned(
                  top: 29, right: 36, child: Image.asset(AppAsset.c_right)),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        width: 70,
                        height: 60,
                        child: Center(
                          child: Text(
                            DateFormat('d MMM, y')
                                .format(DateTime.now())
                                .toString(),
                            style: theme.labelSmall
                                ?.copyWith(color: Colors.white),
                            maxLines: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 80,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppColor.fontColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Pray Time',
                                style: theme.headlineSmall
                                    ?.copyWith(color: AppColor.timeColor),
                              ),
                              Text(
                                DateFormat('EEEE')
                                    .format(DateTime.now())
                                    .toString(),
                                style: theme.headlineSmall
                                    ?.copyWith(color: AppColor.primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: 70,
                          height: 60,
                          margin: EdgeInsets.all(8),
                          child: Text(
                            DateFormat('d MMM, y')
                                .format(DateTime.now())
                                .toString(),
                            style: theme.labelSmall
                                ?.copyWith(color: Colors.white),
                          )),
                    ],
                  ),
                  Container(
                    width: 390,
                    height: 200,
                    decoration: BoxDecoration(
                        color: AppColor.fontColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        CarouselSlider.builder(
                            itemBuilder: (context, index, pageIndex) {
                              return Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  width: 120,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(colors: [
                                        AppColor.primaryColor,
                                        AppColor.timeColor,
                                      ], begin: Alignment.topLeft)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        TimeModel.PrayTime[index].salahName,
                                        style: theme.labelSmall
                                            ?.copyWith(color: Colors.white),
                                      ),
                                      Text(
                                        TimeModel.PrayTime[index].salahTime,
                                        style: theme.headlineLarge?.copyWith(
                                            color: Colors.white,
                                            fontSize: 30),
                                      ),
                                      Text(
                                        TimeModel.PrayTime[index].salahPeriod,
                                        style: theme.labelSmall
                                            ?.copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: TimeModel.PrayTime.length,
                            options: CarouselOptions(
                              // onScrolled: (x)async{
                              //
                              // },

                              height: 128,

                              aspectRatio: 2.0,
                              viewportFraction: 0.3,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: false,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.2,
                              scrollDirection: Axis.horizontal,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Next pray -02:32',
                                  style: theme.labelSmall?.copyWith(
                                      color: AppColor.primaryColor),
                                  maxLines: 2,
                                ),
                              ),
                              Icon(
                                Icons.volume_off_rounded,
                                size: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 259,
          child: GridView.builder(
            itemCount:  AthkarModel.athkarList.length ,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){},
                child: Container(
                  width: 185,
                  height: 259,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      border: Border.all(color: AppColor.fontColor, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Image.asset(
                        AthkarModel.athkarList[index].thekrImage,
                        width: 185,
                        height: 185,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        AthkarModel.athkarList[index].thekrName,
                        style: theme.labelSmall?.copyWith(
                            color: Colors.white),
                        maxLines: 2,
                      ),

                    ],
                  ),
                ),
              );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisExtent: 220),
          ),
        )
      ],
    );
  }
}

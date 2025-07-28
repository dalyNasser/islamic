import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}
List<String> hadithes=[];
class _HadithScreenState extends State<HadithScreen> {
  @override
  Widget build(BuildContext context) {
     if(hadithes.isEmpty)loadHadith();
    return Column(
      children: [
        CarouselSlider.builder(

          itemCount: hadithes.length,
            itemBuilder: (context,i,pageIndex) {
              return Container(
                width: 313,
                height: 818,
                decoration: BoxDecoration(color: AppColor.fontColor,borderRadius: BorderRadius.circular(16)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Image.asset(AppAsset.left_corner,color: Colors.black,),
                          Image.asset(AppAsset.right_corner,color: Colors.black,)],),
                    ),
                    Positioned(
                        child: Opacity(

                          opacity: 0.25,
                          child: Image.asset(
                            AppAsset.onboardinQuran,
                            fit: BoxFit.contain,
                            color: Colors.black,
                            width: 313,
                            height: 818,
                          ),
                        )),
                    Positioned(
                      top:10,
                      right: 10,
                      left:10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200,
                          height: 350,
                          child: ListView(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(child:Text(textAlign: TextAlign.center,hadithes[i],style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black,height: 1.8),)
                              ),
                            ],
                          ),
                        ),
                      ),),

                    Positioned(bottom:0,child: Image.asset(AppAsset.img_bottom_decoration,color: Colors.black,fit: BoxFit.contain,),),

                  ],
                ),
              );},
            options: CarouselOptions(

              height: MediaQuery.of(context).size.height *0.6,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            )),
      ],
    );
  }

Future<void> loadHadith()async{

    for(int i=1;i<=50;i++){
      String content=await rootBundle.loadString('assets/text/hadeeth/h$i.txt');
      hadithes.add(content);
    }
    setState(() {
    });
}
}

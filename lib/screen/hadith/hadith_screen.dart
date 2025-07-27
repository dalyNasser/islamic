import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/screen/hadith/hadith_card.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}
List<String> hadithes=[];
List<String> hadithe=[];
class _HadithScreenState extends State<HadithScreen> {
  @override
  Widget build(BuildContext context) {
     if(hadithes.isEmpty)loadHadith();
    return Column(
      children: [
        Expanded(
          child: CarouselSlider.builder(

            itemCount: hadithes.length,
              itemBuilder: (context,i,pageIndex) {
                return hadith_card(i, context);},
              options: CarouselOptions(
                onPageChanged: (x,_)async{
                  await getHadith(x);
                },
                // onScrolled: (x)async{
                //
                // },

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
        ),
      ],
    );
  }
Future<void> getHadith(int x)async{
    hadithe=hadithes[x].split('\n');
    setState(() {

    });
    }
Future<void> loadHadith()async{

    for(int i=1;i<=hadithes.length;i++){
      String content=await rootBundle.loadString('assets/text/hadeeth/h$i.txt');
      hadithes.add(content);
    }
   await getHadith(0);
    setState(() {
    });
}
}

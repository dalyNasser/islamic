import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/model/sebha_model.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int currentIndex=0;
  int count =0;
  double turns=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(SebhaModel.tasbehList[currentIndex].s_title,style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),),
        Stack(
          children: [
            Positioned(
              top: 250,
              left: 50,
              right: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                 Text(
                  SebhaModel.tasbehList[currentIndex].s_content,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 36),
                ),
                SizedBox(height: 10,),

                Text(
                count.toString(),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 36),
              ),
               ],),
            ),

            InkWell(
              onTap: (){
                setState(() {
                  turns=turns+(2*pi/33);
                  if(count==SebhaModel.tasbehList[currentIndex].count){
                  count=0;
                  currentIndex=(currentIndex+1)% SebhaModel.tasbehList.length;
                }
                else
                count++;



                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 10,),
                  Image.asset(
                    AppAsset.sebha_head,
                    width: 145,
                    height: 80,
                    fit: BoxFit.fill,
                  ),
                  AnimatedRotation(
                    turns: turns,
                    duration: Duration(milliseconds: 100),
                    child: Image.asset(
                      AppAsset.sebha_body,
                      width: 379,
                      height: 350,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

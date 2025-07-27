import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/screen/hadith/hadith_screen.dart';

Container hadith_card(int i, BuildContext context) {
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
  );
}

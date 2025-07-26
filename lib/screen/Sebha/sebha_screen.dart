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

            Positioned(

            child: InkWell(
              onTap: (){
                setState(() { if(count==SebhaModel.tasbehList[currentIndex].count){
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
                  Image.asset(
                    AppAsset.sebha_head,
                    width: 145,
                    height: 86,
                  ),
                  Image.asset(
                    AppAsset.sebha_body,
                    width: 379,
                    height: 381,
                  )
                ],
              ),
            )),
          ],
        )
      ],
    );
  }
}

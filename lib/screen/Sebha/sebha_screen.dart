import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/model/sebha_model.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(SebhaModel.tasbehList.first.s_title,style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),),
        Stack(
          children: [
            Positioned(
              top: 200,
              left: 120,
              child: Text(
                SebhaModel.tasbehList.first.s_content,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Positioned(
              top: 250,
              left: 150,
              child: Text(
                count.toString(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            InkWell(
              onTap: (){
                count++;
                if(count==33)count=0;
                setState(() {

                });
              },
              child: Column(
                children: [
                  Image.asset(
                    AppAsset.sebha_head,
                    width: 145,
                    height: 86,
                  ),
                  RotatedBox(
                    quarterTurns: 10,
                    child: Image.asset(
                      AppAsset.sebha_body,
                      width: 379,
                      height: 381,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/model/radio_model.dart';

Card custom_card(int index, BuildContext context) {
  return Card(
    color: AppColor.fontColor,
    child: Container(
      width: 390,
      height: 133,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,


            child:
            RadioModel.radioList[index].isRun?
               Container(
                 width: 390,              height: 70,

              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        AppAsset.play_background
                    ),
                    colorFilter: ColorFilter.mode(
                        AppColor.primaryColor_trnas, BlendMode.srcIn),
                    fit: BoxFit.fill,
                  )),
            ):
        Container(
              width: 390,
              height: 99,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAsset.img_bottom_decoration,
                    ),
                    colorFilter: ColorFilter.mode(
                        AppColor.primaryColor_trnas, BlendMode.srcIn),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(RadioModel.radioList[index].readerName!,style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColor.primaryColor),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioModel.radioList[index].isRun?const Icon(
                    Icons.pause,
                    size: 44,
                  ):  const Icon(
                    Icons.play_arrow_rounded,
                    size: 44,
                  )
                  ,const SizedBox(width: 30,)
                  , RadioModel.radioList[index].isSpeaker?
                  const Icon(
                    Icons.volume_off_rounded,
                    size: 44,
                  ):const Icon(
                    Icons.volume_down_rounded,
                    size: 44,
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

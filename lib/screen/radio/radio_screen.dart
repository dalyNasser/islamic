import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/model/radio_model.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Radio'),
                style: theme.elevatedButtonTheme.style,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Reciters',
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColor.fontColor,
                    child: Container(
                      width: 390,
                      height: 133,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child:  RadioModel.radioList[index].isRun?  Container(
                              width: 390,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                image: AssetImage(
                                 AppAsset.play_background
                                ),
                                colorFilter: ColorFilter.mode(
                                    AppColor.primaryColor, BlendMode.srcIn),
                                fit: BoxFit.fitWidth,
                              )),
                            ): Container(
                              width: 390,
                              height: 99,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                image: AssetImage(
                                  AppAsset.img_bottom_decoration,
                                ),
                                colorFilter: ColorFilter.mode(
                                    AppColor.primaryColor, BlendMode.srcIn),
                                fit: BoxFit.fill,
                              )),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Radio Ibrahim Al-Akdar',style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: AppColor.primaryColor),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RadioModel.radioList[index].isRun?Icon(
                                    Icons.pause,
                                    size: 44,
                                  ):  Icon(
                                    Icons.play_arrow_rounded,
                                    size: 44,
                                  )
                                  ,SizedBox(width: 30,)
                                  , RadioModel.radioList[index].isSpeaker?
                                  Icon(
                                    Icons.volume_off_rounded,
                                    size: 44,
                                  ):Icon(
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
                },
                separatorBuilder: (context, index) {
                  return SizedBox();
                },
                itemCount: 10),
          )
        ],
      ),
    );
  }
}

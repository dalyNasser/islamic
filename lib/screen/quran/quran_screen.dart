import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/core/route_app.dart';
import 'package:islamic/model/surah_model.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Image.asset(
              AppAsset.suffix_ic,
              height: 28,
              width: 28,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: AppColor.fontColor,
                width: 1,
              ),
            ),
          ),
        ),
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Text('Most Recently',style: Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(fontSize: 16,color: Colors.white),),
    ),
        Container(
          height: 150,
          width: 283,
          child: ListView.builder(
              itemCount: Surah.recently.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  margin:  const EdgeInsets.all(8.0),
                  color: AppColor.fontColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            Surah.recently[index].englishName,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColor.primaryColor),
                          ),  Text(
                            Surah.recently[index].arabicName,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColor.primaryColor),
                          ),  Text(
                            '${Surah.recently[index].ayaCount} Verses',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontSize: 14,color: AppColor.primaryColor),
                          ),],
                      ),
                      Image.asset(AppAsset.quran_img)

                    ],),
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 4),
          child: Text('Suras List',style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontSize: 16,color: Colors.white),),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context,index){return
                ListTile(
                  onTap: (){Navigator.pushNamed(context, RouteApp.surahScreen,arguments: Surah.surahList[index]);},
            leading: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAsset.sura_frame_img)
                ),
              ),
              child: Center(
                  child: Text(
                    '${index+1}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 14),
                  )),
            ),
            title: Text(
              Surah.surahList[index].englishName,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Text(
              '${Surah.surahList[index].ayaCount} Verses',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontSize: 14),
            ),
            trailing: Text(
              Surah.surahList[index].arabicName,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          );}, separatorBuilder:(context,index)=> Divider(color: Colors.white,height: 5,endIndent: 60,indent: 50), itemCount: Surah.surahList.length),
        )



      ],
    );
  }
}

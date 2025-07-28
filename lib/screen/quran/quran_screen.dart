import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/core/route_app.dart';
import 'package:islamic/model/surah_model.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<Surah> filterdList = [];
  Future<void> reloadList(String val) async {
    setState(() {
      filterdList = Surah.surahList
          .where((item) => item.arabicName.contains(val))
          .toList();
    });
  }

  @override
  void initState() {
    filterdList = Surah.surahList;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          onChanged: (value) async {
            await reloadList(value);
          },
          cursorColor: AppColor.fontColor,
          style: TextStyle(color: AppColor.fontColor),
          decoration: InputDecoration(
            fillColor: AppColor.fontColor,
            prefixIcon: Image.asset(
              AppAsset.suffix_ic,
              height: 28,
              width: 28,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: AppColor.fontColor,
                width: 1,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
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
          child: Text(
            'Most Recently',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontSize: 16, color: Colors.white),
          ),
        ),
        Container(
          height: 150,
          width: 283,
          child: ListView.builder(
              itemCount: Surah.recently.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteApp.surahScreen,
                        arguments:  Surah.recently[index]);
                  },
                  child: Card(
                    margin: const EdgeInsets.all(8.0),
                    color: AppColor.fontColor,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                Surah.recently[index].englishName,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(color: AppColor.primaryColor),
                              ),
                              Text(
                                Surah.recently[index].arabicName,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(color: AppColor.primaryColor),
                              ),
                              Text(
                                '${Surah.recently[index].ayaCount} Verses',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        fontSize: 14,
                                        color: AppColor.primaryColor),
                              ),
                            ],
                          ),
                          Image.asset(AppAsset.quran_img)
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
          child: Text(
            'Suras List',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontSize: 16, color: Colors.white),
          ),
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, RouteApp.surahScreen,
                        arguments: filterdList[index]);
                  },
                  leading: Container(
                    width: 52,
                    height: 52,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.sura_frame_img)),
                    ),
                    child: Center(
                        child: Text(
                      '${index + 1}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(fontSize: 14),
                    )),
                  ),
                  title: Text(
                    filterdList[index].englishName,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  subtitle: Text(
                    '${filterdList[index].ayaCount} Verses',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontSize: 14),
                  ),
                  trailing: Text(
                    filterdList[index].arabicName,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                  color: Colors.white, height: 5, endIndent: 60, indent: 50),
              itemCount:filterdList.length),
        )
      ],
    );
  }
}

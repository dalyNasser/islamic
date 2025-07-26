import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/model/surah_model.dart';

class SurahScreen extends StatefulWidget {
  const SurahScreen({
    super.key,
  });

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  String fileContents = '';
  String  content='';
  List<String> verses =[];


  // @override
  // void initState() {
  //   super.initState();
  //   _loadFile();
  // }

  Future<void> _loadFile(int num) async {

    String contents = await  rootBundle.loadString('assets/text/Suras/$num.txt');
    setState(() {
     verses = contents.split('\n');

    });}

    @override
  Widget build(BuildContext context) {
    final Surah surah = ModalRoute.of(context)!.settings.arguments as Surah;
   verses.isEmpty? _loadFile(surah.surahNumber):();
    return Scaffold(
      appBar: AppBar(
        title: Text(surah.englishName),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Positioned(
              left: 0,
              child: Image.asset(
                AppAsset.left_corner,
                width: 93,
                height: 92,
              ),
            ),
            Positioned(
                left: MediaQuery.of(context).size.width / 3,
                right: MediaQuery.of(context).size.width / 3,
                child: Text(
                  surah.arabicName,
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            Positioned(
              right: 0,
              child: Image.asset(
                AppAsset.right_corner,
                width: 93,
                height: 92,
              ),
            ),

            Positioned(
              bottom: 0,
              child: Image.asset(
                fit: BoxFit.fill,
                AppAsset.img_bottom_decoration,
                width: 400,
                height: 112,
              ),
            ) , Positioned(
              top: 50,
              left: 25,
              right: 25,
              child: Container(
                width: double.infinity,
                height: 550,
                child: ListView.separated(

                  separatorBuilder: (context,index)=>SizedBox(height: 10,),
                  itemBuilder: (context,index){return  Text(
                    textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      '${verses[index]}(${index+1})',

                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 2),
                  ); },
                  itemCount: verses.length,



                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

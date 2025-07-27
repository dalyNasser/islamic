import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';
import 'package:islamic/core/app_color.dart';
import 'package:islamic/model/radio_model.dart';
import 'package:islamic/screen/radio/costom_card.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  bool isFirstButtonEnabled = true;

  void toggleButtons() {
    setState(() {
      isFirstButtonEnabled = !isFirstButtonEnabled;
    });
  }
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: toggleButtons,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: isFirstButtonEnabled ? AppColor.primaryColor : Colors.white,
                
                    backgroundColor: isFirstButtonEnabled ? AppColor.fontColor : Colors.grey,
                  ),
                  child: Text('Radio'),
                ),
              ),
              SizedBox(width: 20), // Space between buttons
              Expanded(
                child: ElevatedButton(
                  onPressed: toggleButtons,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: !isFirstButtonEnabled ? AppColor.primaryColor : Colors.white,
                    backgroundColor: !isFirstButtonEnabled ? AppColor.fontColor : Colors.black,
                  ),
                  child: Text('Reciters'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return custom_card(index, context);
                },
                separatorBuilder: (context, index) {
                  return SizedBox();
                },
                itemCount: RadioModel.radioList.length),
          )
        ],
      ),
    );
  }
}

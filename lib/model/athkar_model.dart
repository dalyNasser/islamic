import 'package:islamic/core/app_asset.dart';

class AthkarModel{
  final String thekrName;
  final String thekrImage;

  AthkarModel({required this.thekrName, required this.thekrImage});
  static List<AthkarModel> athkarList=[
    AthkarModel(thekrName: 'Evening Azkar', thekrImage: AppAsset.evening_img),
    AthkarModel(thekrName: 'Morning Azkar', thekrImage: AppAsset.morning_img),
  ];
}
class RadioModel {
  final String? readerName;
  final bool isRun;
  final bool isSpeaker;

  RadioModel({this.readerName, this.isRun=false, this.isSpeaker=false});
  static List<RadioModel> radioList=[

    RadioModel(isRun:false ,isSpeaker: false,readerName: 'Radio Ibrahim Al-Akdar'),
    RadioModel(isRun:true ,isSpeaker: true,readerName: 'Radio Al-Qaria Yassen'),
    RadioModel(isRun:false ,isSpeaker: false,readerName: 'Radio Ahmed Al-trabulsi'),
    RadioModel(isRun:false ,isSpeaker: false,readerName: 'Radio Addokali Mohammad Alalim'),
  ];



}

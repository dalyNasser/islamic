class TimeModel{
  final String salahName;
  final String salahTime;
  final String salahPeriod;

  TimeModel({required this.salahName, required this.salahTime,required this.salahPeriod});
  static List<TimeModel> PrayTime=[
    TimeModel( salahName: 'Fajr', salahTime: '04:30', salahPeriod: "AM"),
    TimeModel( salahName: 'Dhuhr', salahTime: '12:30', salahPeriod: "PM"),
    TimeModel( salahName: 'ASR', salahTime: '03:30', salahPeriod: "PM"),
    TimeModel( salahName: 'Maghrib', salahTime: '06:15', salahPeriod: "PM"),
    TimeModel( salahName: 'Ishaa', salahTime: '8:10', salahPeriod: "PM"),
  ];
}
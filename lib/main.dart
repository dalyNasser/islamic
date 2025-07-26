
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic/core/route_app.dart';
import 'package:islamic/core/theme_manager.dart';

void main(){
  runApp(islamicApp());
}
class  islamicApp extends StatelessWidget {
  const  islamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.darkMode,
      routes: RouteApp.Routs,
      initialRoute: RouteApp.splashScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}

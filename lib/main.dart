import 'package:commercial/chooseconnect.dart';
import 'package:commercial/create_account.dart';
import 'package:commercial/login_page.dart';
import 'package:commercial/splashscreen.dart';
import 'package:commercial/splashscreen_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Introduction(),
      initialRoute: ('/'),
      routes: <String,WidgetBuilder>{
        '/chooseconnect':(context) => ChooseConnect(),
        '/createaccount':(context)=>CreateAccount(),
        '/login':(context)=>LoginPage(),
        '/splashscreen_slider':(context)=>SplashScreenSlider(),
      },
    );
  }
}


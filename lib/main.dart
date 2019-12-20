import 'package:commercial/account/sign-in/sign_in.dart';
import 'package:commercial/account/sign-up/sign_up.dart';
import 'package:commercial/homescreen/home/dashboard.dart';
import 'package:commercial/homescreen/listcategories.dart';
import 'package:commercial/homescreen/chooseconnect.dart';

import 'package:commercial/homescreen/listlaptop.dart';
import 'package:commercial/homescreen/productdetail.dart';
import 'package:commercial/homescreen/search/search.dart';
import 'package:commercial/splashscreen/splashscreen.dart';
import 'package:commercial/splashscreen/splashscreen_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homescreen/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      initialRoute: ('/'),
      routes: <String,WidgetBuilder>{
        '/': (context) => DashBoardScreen(),
        '/home': (context) => DashBoardScreen(),
        '/chooseconnect':(context) => ChooseConnect(),
        '/sign-up':(context)=>SignUpView(),
        '/sign-in':(context)=>SignInView(),
        '/splashscreen_slider':(context)=>SplashScreenSlider(),
        '/categories':(context)=>ListCategories(),
        '/listlaptop':(context)=>ListLaptop(),
        '/search':(context)=>SearchScreen(),
        '/productdetail': (context)=>ProductDetail(),
      },
    );

  }
}


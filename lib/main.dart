import 'package:commercial/account/sign-in/sign_in.dart';
import 'package:commercial/account/sign-up/sign_up.dart';
import 'package:commercial/listcategories.dart';
import 'package:commercial/chooseconnect.dart';
import 'package:commercial/home/home.dart';
import 'package:commercial/listlaptop.dart';
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
      initialRoute: ('/'),
      routes: <String,WidgetBuilder>{
        '/': (context) => HomeView(),
        '/home': (context) => HomeView(),
        '/chooseconnect':(context) => ChooseConnect(),
        '/sign-up':(context)=>SignUpView(),
        '/sign-in':(context)=>SignInView(),
        '/splashscreen_slider':(context)=>SplashScreenSlider(),
        '/categories':(context)=>ListCategories(),
        '/listlaptop':(context)=>ListLaptop(),
      },
    );

  }
}


import 'package:commercial/chooseconnect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0001FC),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: screen.height * 0.2,
              ),
              Text(
                "LATECH",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontFamily: 'ptmono',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "TECH MARKET",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'sfpro',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 6),
              ),
              Image.asset('iconlogo.png'),
              Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/splashscreen_slider');
                    },
                    child: Text(
                      "Let's start",
                      style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/sign-up');
                  },
                  child: Text(
                    "Skip for now",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Swiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          "http://via.placeholder.com/288x188",
          fit: BoxFit.fill,
        );
      },
      itemCount: 10,
      viewportFraction: 0.8,
      scale: 0.9,
    );
  }
}

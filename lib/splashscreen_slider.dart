import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SplashScreenSlider extends StatefulWidget {
  @override
  _SplashScreenSliderState createState() => _SplashScreenSliderState();
}

class _SplashScreenSliderState extends State<SplashScreenSlider> {
  List<Map<String, dynamic>> listSlide = [
    {"image": 'icon1.png', "title": "Title"},
    {"image": 'icon2.png', "title": "Title"},
    {"image": 'icon3.png',"title": "Title"}
    ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff0001FC),
      body:  Swiper(
        itemBuilder: (BuildContext context, int index) {
          return  buildContent(context,
            title: listSlide[index]['title'],
            image: listSlide[index]['image'],
          );
        },
        itemWidth: screenSize.width,
        itemCount: listSlide.length,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(bottom: screenSize.height*0.21)
        ),
        viewportFraction: 1.0,
        scale: 0.9,
      )
    );
  }

 Widget buildContent(BuildContext context, {String image, String title}){
    final screenSize = MediaQuery.of(context).size;

    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: screenSize.height*0.43,
            decoration: BoxDecoration(
              color: Color(0xff0001FC),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
              )
            ),
          ),
          ///todo
          Positioned(
            bottom: screenSize.height*0.11,
            child: Text(title,
              style: TextStyle(color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
 }
}

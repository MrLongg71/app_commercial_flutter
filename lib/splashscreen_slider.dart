import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SplashScreenSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0001FC),
      body:  Swiper(
        itemBuilder: (BuildContext context, int index) {
          return  Image.asset(
            'icon1.png',
            fit: BoxFit.fill,
          );

        },
        itemHeight: 260,
        itemWidth: 360,
        itemCount: 3,
        layout: SwiperLayout.STACK,
        pagination: SwiperPagination(),
        viewportFraction: 0.8,
        scale: 0.9,
      )
    );
  }
}

import 'package:commercial/utils/dimension.dart';
import 'package:commercial/widget/function.dart' as prefix0;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    var screen = MediaQuery.of(context).size;
    Dimension.height = MediaQuery.of(context).size.height;
    Dimension.width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Home",
          style:
              TextStyle(fontSize: 32, fontFamily: 'sfpro', color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 16, right: 16, top: 20,bottom: 20),
          child: Column(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: Dimension.getHeigh(0.2),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff0001FC),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Bose Home Speaker",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                "USD 279",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                          Image.asset('imageproduc.png'),
//
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              prefix0.Function(),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Sales",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Material(
                    elevation: 2.0,
                    color: Colors.white,
                    child: Container(
                      width: 161,
                      height: 251,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 50,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'imagesmartphone.png',
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Smartphones",
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'sfpro'),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xffE0ECF8),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "-50%",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff1F53E4),
                                    fontFamily: 'sfpro'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Material(
                        elevation: 2.0,
                        color: Colors.white,
                        child: Container(
                          width: 161,
                          height: 251,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 50,
                                left: 20,
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'imagesmartphone2.png',
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      "Smartphones",
                                      style: TextStyle(
                                          fontSize: 18, fontFamily: 'sfpro'),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 0.0,
                                child: Container(
                                  width: 31,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xffE0ECF8),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "-50%",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff1F53E4),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEFF5FB),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text("a"),
            backgroundColor: Color(0xffEFF5FB),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: Text("a"),
            backgroundColor: Color(0xffEFF5FB),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
            title: Text("a"),
            backgroundColor: Color(0xffEFF5FB),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            title: Text("a"),
            backgroundColor: Color(0xffEFF5FB),
          )
        ],
      ),
    );
  }
}

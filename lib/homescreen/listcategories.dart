import 'package:commercial/utils/customcardview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    List categories = [
      "All",
      "Computer",
      "Accessories",
      "Smartphones",
      "Smart objects",
      "Speakers"
    ];

    return WillPopScope(
      onWillPop: (){

        Navigator.popAndPushNamed(context, '/home');
      },
      child: Scaffold(
        backgroundColor: Color(0xffFDFEFF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/home');
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 25.0, bottom: 25.0),
              child: Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // su kien scoll listview.builder
                itemCount: 6,
                padding: EdgeInsets.only(left: 16, right: 16),
                itemBuilder: (_, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 1:
                            Navigator.pushReplacementNamed(
                                context, "/listlaptop");
                            break;
                          case 2:
                            Navigator.pushReplacementNamed(context, "/search");
                        }
                      },
                      child: Material(
                        elevation: 3.0,
                        color: Colors.white,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 75,
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            categories[index],
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
//              Material(
//                elevation: 10,
//                color: Colors.white,
//                child: Container(
//                  width: double.infinity,
//                  height: 75,
//                  child: Padding(
//                    padding: EdgeInsets.all(20),
//                    child: GestureDetector(
//                      onTap: (){
//                        Navigator.of(context).pushReplacementNamed('/listlaptop');
//                      },
//                      child: Text(
//                        "Computers",
//                        style: TextStyle(color: Colors.black, fontSize: 18),
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//              Material(
//                elevation: 10,
//                color: Colors.white,
//                child: Container(
//                  width: double.infinity,
//                  height: 75,
//                  child: Padding(
//                    padding: EdgeInsets.all(20),
//                    child: Text(
//                      "Accessories",
//                      style: TextStyle(color: Colors.black, fontSize: 18),
//                    ),
//                  ),
//                ),
//              ),
//              Material(
//                elevation: 10,
//                color: Colors.white,
//                child: Container(
//                  width: double.infinity,
//                  height: 75,
//                  child: Padding(
//                    padding: EdgeInsets.all(20),
//                    child: Text(
//                      "Smartphones",
//                      style: TextStyle(color: Colors.black, fontSize: 18),
//                    ),
//                  ),
//                ),
//              ),
//              Material(
//                elevation: 10,
//                color: Colors.white,
//                child: Container(
//
//                  width: double.infinity,
//                  height: 75,
//                  child: Padding(
//                    padding: EdgeInsets.all(20),
//                    child: Text(
//                      "Smart objects",
//                      style: TextStyle(color: Colors.black, fontSize: 18),
//                    ),
//                  ),
//                ),
//              ),
//              Material(
//                elevation: 10,
//                color: Colors.white,
//                child: Container(
//                  width: double.infinity,
//                  height: 75,
//                  child: Padding(
//                    padding: EdgeInsets.all(20),
//                    child: Text(
//                      "Speakers",
//                      style: TextStyle(color: Colors.black, fontSize: 18),
//                    ),
//                  ),
//                ),
//              ),
          ],
        ),
      ),
    );
  }
}

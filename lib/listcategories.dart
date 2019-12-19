import 'package:commercial/utils/customcardview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffFDFEFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Material(
                elevation: 10,
                color: Colors.white,
                child: Container(

                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),

              Material(
                elevation: 10,
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/listlaptop');
                      },
                      child: Text(
                        "Computers",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 10,
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Accessories",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 10,
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Smartphones",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 10,
                color: Colors.white,
                child: Container(

                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Smart objects",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 10,
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Speakers",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
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

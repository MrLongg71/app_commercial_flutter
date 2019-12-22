import 'package:commercial/homescreen/account/acount.dart';

import 'package:commercial/homescreen/card/card.dart';
import 'package:commercial/homescreen/home/home.dart';
import 'package:commercial/homescreen/search/search.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int index = 0;
  List<Widget>listScreen = [
    HomeView(),
    SearchScreen(),
    CardScreen(),
    AccountScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
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
              color: Colors.black
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
        onTap: (index){
          setState(() {
            this.index = index;
          });
        },
      ),
      body: IndexedStack(
        index: index,
        children: listScreen,
      ),
    );
  }
}

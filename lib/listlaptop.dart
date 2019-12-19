import 'package:flutter/material.dart';

class ListLaptop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.popAndPushNamed(context, '/home');
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Laptop',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                     ,fontFamily: 'sfpro'),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,

                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "sdasaddsa"
                    ),
                  ),
                    Icon(Icons.apps,color: Colors.grey,)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 8.0,
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        width: 167,
                        height: 196,
                        padding: EdgeInsets.only(left: 12),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 32,
                              ),
                              Image.asset('laptop1.png'),
                              SizedBox(
                                height: 42,
                              ),
                              Text(
                                'Surface laptop 3',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                'USD 999',
                                style: TextStyle(color: Color(0xff0001FC)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     Material(
                        color: Colors.white,
                        elevation: 8.0,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          width: 167,
                          height: 196,
                          padding: EdgeInsets.only(left: 12),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 32,
                                ),
                                Image.asset('laptop2.png'),
                                SizedBox(
                                  height: 42,
                                ),
                                Text(
                                  'XPS laptop 13',
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                ),
                                Text(
                                  'USD 999',
                                  style: TextStyle(color: Color(0xff0001FC)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,                children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 8.0,
                      child: Container(
                        width: 167,
                        margin: EdgeInsets.all(10.0),
                        height: 196,
                        padding: EdgeInsets.only(left: 12),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 32,
                              ),
                              Image.asset('laptop3.png'),
                              SizedBox(
                                height: 42,
                              ),
                              Text(
                                'LG Gram 17',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                'USD 999',
                                style: TextStyle(color: Color(0xff0001FC)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 8.0,
                      child: Container(
                        width: 167,
                        margin: EdgeInsets.all(10.0),
                        height: 196,
                        padding: EdgeInsets.only(left: 12),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 32,
                              ),
                              Image.asset('laptop4.png'),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Macbook pro 13',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                'USD 999',
                                style: TextStyle(color: Color(0xff0001FC)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,                children: <Widget>[
                    Material(
                      color: Colors.white,
                      elevation: 8.0,
                      child: Container(
                        width: 167,
                        margin: EdgeInsets.all(10.0),
                        height: 196,
                        padding: EdgeInsets.only(left: 12),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 32,
                              ),
                              Image.asset('laptop5.png'),
                              SizedBox(
                                height: 42,
                              ),
                              Text(
                                'Macbook pro 13',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                'USD 999',
                                style: TextStyle(color: Color(0xff0001FC)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 8.0,
                      child: Container(
                        width: 167,
                        height: 196,
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.only(left: 12),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 32,
                              ),
                              Image.asset('laptop6.png'),
                              SizedBox(
                                height: 42,
                              ),
                              Text(
                                'Surface laptop 3',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                'USD 999',
                                style: TextStyle(color: Color(0xff0001FC)),
                              ),
                            ],
                          ),
                        ),
                      ),
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

      ),
    );
  }
}

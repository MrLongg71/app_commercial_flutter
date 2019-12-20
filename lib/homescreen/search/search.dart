import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List image = [
      Image.asset(
        'product1.png',
      ),
      Image.asset('product2.png'),
      Image.asset(
        'product1.png',
      ),
      Image.asset('product2.png'),
      Image.asset(
        'product1.png',
      ),
      Image.asset('product2.png'),
      Image.asset(
        'product1.png',
      ),
      Image.asset('product2.png'),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Search",
          style:
              TextStyle(fontSize: 32, fontFamily: 'sfpro', color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffE0ECF8),
                ),
                child: SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.search,
                            color: Color(0xff1F53E4),
                          )),
                      VerticalDivider(
                        color: Color(0xffA7A9BE),
                      ),
                      Expanded(
                        flex: 8,
                        child: TextFormField(
                          style: TextStyle(color: Color(0xff1F53E4)),
                          decoration: InputDecoration(
                              hintText: "What are you looking for ?",
                              hintStyle: TextStyle(color: Color(0xff1F53E4)),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  Text(
                    "Last viewed",
                    style: TextStyle(
                        color: Colors.black, fontSize: 24, fontFamily: 'sfpro'),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (_, int index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 15),
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacementNamed('/productdetail');
                          },
                          child: Material(
                            elevation: 5.0,
                            color: Colors.white,
                            child: Container(
                              height: 105,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  image[index],
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Google Home mini",
                                        style: TextStyle(
                                            fontSize: 18, fontFamily: 'sfpro'),
                                      ),
                                      Text(
                                        "USD 49",
                                        style: TextStyle(
                                            color: Color(0xff1F53E4),
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Lastest search",
                    style: TextStyle(
                        color: Colors.black, fontSize: 24, fontFamily: 'sfpro'),
                  ),
                  Text(
                    "Clean all history",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Smart speaker",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16,bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "USB-C charger",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

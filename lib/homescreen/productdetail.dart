import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.popAndPushNamed(context, '/search');
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/search');
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "iPhone 11 Pro",
                style: TextStyle(fontSize: 24, fontFamily: 'sfpro'),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xffE0ECF8),
                    borderRadius: BorderRadius.circular(2)),
                width: 40,
                height: 30,
                child: Text(
                  "New",
                  style: TextStyle(
                      color: Color(0xff1F53E4),
                      fontSize: 14,
                      fontFamily: 'sfpro'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset('product3.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Color",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff52514F),
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffEBEBE4),
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff6F7972),
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF5D8C0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Capacity",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "64 gb",
                    style: TextStyle(
                        color: Color(0xff0001FC),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "256 gb",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                       ),
                  ),
                  Text(
                    "512 gb",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                     ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    showGeneralDialog(
                      context: context,
                      barrierColor: Color(0xff8FFFFFFF).withOpacity(0.9),
                      barrierDismissible: false,
                      transitionDuration: Duration(milliseconds: 400),
                      pageBuilder: (_, __, ___) { // your widget implementation
                        return SizedBox.expand( // makes widget fullscreen
                          child: Container(
                            padding: EdgeInsets.only(left: 16,right: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               Icon(Icons.shopping_cart,color: Colors.black,size: 100,),
                                SizedBox(
                                  height: 30,
                                ),
                                Text("Produc added to card!",style: TextStyle(fontFamily: 'sfpro',fontSize: 24,color: Colors.black),),
                                SizedBox(
                                  height: 40,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: RaisedButton(
                                    color: Color(0xff1F53E4),
                                    onPressed: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Back to shopping",style: TextStyle(color: Colors.white,fontSize: 18),
                                    ),
                                  ) ,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  color: Color(0xff1F53E4),
                  child: Text(
                    "Add to card",style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

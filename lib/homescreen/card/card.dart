import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccoutScreenState createState() => _AccoutScreenState();
}

class _AccoutScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Checkout",
          style:
              TextStyle(fontSize: 32, fontFamily: 'sfpro', color: Colors.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 16),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (_, int index) {
                  return Material(
                    color: Colors.white,
                    elevation: 3.0,
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 35,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xffE0ECF8),
                                ),
                                child: Text(
                                  "New",
                                  style: TextStyle(color: Color(0xff0001FC)),
                                ),
                              ),
                              Icon(Icons.close),
                            ],
                          ),
                          Center(
                            child: Image.asset(
                              'product3.png',
                              width: 97,
                              height: 130,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Iphone 11 Pro",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "USD 999",
                                style: TextStyle(
                                    color: Color(0xff0001FC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xffE0ECF8),
                                ),
                                child: Text(
                                  "x1",
                                  style: TextStyle(
                                      color: Color(0xff0001FC), fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "White",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Delivery",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "12 Madison Avenue, NYC",
                        style: TextStyle(
                            color: Color(0xff0001FC),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Fast delivery : 17/11/19",
                        style: TextStyle(
                          color: Color(0xffA7A9BE),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Payment",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Visa ***678",
                        style: TextStyle(
                            color: Color(0xff0001FC),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Expire 02/20",
                        style: TextStyle(
                          color: Color(0xffA7A9BE),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "USD 1248",
                        style: TextStyle(
                            color: Color(0xff0001FC),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Enter a discount code",
                        style: TextStyle(
                          color: Color(0xff2DB57D),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 32),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Color(0xff0135EB),
                    onPressed: () {
                      showGeneralDialog(
                          context: context,
                          barrierDismissible: false,
                          barrierColor: Color(0xffA30135EB).withOpacity(0.8),
                          transitionDuration: Duration(milliseconds: 400),
                          pageBuilder: (_, __, ___) {
                            return SizedBox.expand(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 100,
                                  ),
                                  Text(
                                    "Order validate!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 16, right: 16, top: 10),
                                    child: SizedBox(
                                      height: 50,
                                      width: double.infinity,
                                      child: RaisedButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacementNamed('/tracking');
                                        },
                                        color: Colors.white,
                                        child: Text(
                                          "Tracking",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Pay",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

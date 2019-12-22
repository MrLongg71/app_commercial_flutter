import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List listInformationAccount = [
      "Order",
      "Return and refunds",
      "Account information",
      "Security and settings",
      "Help",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Account",
          style:
              TextStyle(fontFamily: 'sfpro', fontSize: 32, color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    'iconadmin.png',
                    fit: BoxFit.cover,
                    width: 80.0,
                    height: 80.0,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "James Warden",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Premium member",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0001FC),
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (_, int index) {
                return Material(
                  elevation: 1.0,
                  color: Colors.white,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    child: GestureDetector(
                      onTap: (){
                        switch(index){
                          case 2:
                              Navigator.of(context).pushReplacementNamed('/accountinformation');
                            break;
                        }
                      },
                      child: Text(
                        listInformationAccount[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

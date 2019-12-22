import 'package:flutter/material.dart';

class AccountInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Navigator.popAndPushNamed(context, '/home');
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 21, right: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text("Account information",style: TextStyle(color: Colors.black,fontFamily: 'sfpro',fontSize: 24),),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "User name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Change",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "James Warden",
              style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Email",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacementNamed('/email');
                  },
                  child: Text(
                    "Change",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "j-warden@email.com",
              style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Phone number",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Change",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "+33 6 16 39 54 78",
              style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Change",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "*******************",
              style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Account type",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Change",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Premium",
              style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0001FC),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 67,
              ),
              Center(
                child: Text(
                  "Create an account",
                  style: TextStyle(
                      color: Colors.white, fontSize: 24, fontFamily: 'sfpro'),
                ),
              ),
              SizedBox(
                height: screen.height * 0.25,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Full name",
                      style: TextStyle(
                        fontFamily: 'sfpro',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 8.0),
                          hintText: "Full name",
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: 'sfpro',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 8.0),
                          hintText: "Email",
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: 'sfpro',
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 32),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 8.0),
                          hintText: "Password",
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    "Validate",
                    style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    },
                    child: Text(
                      "Already have an account ? Login",
                      style: TextStyle(color: Color(0xffFBDF00), fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

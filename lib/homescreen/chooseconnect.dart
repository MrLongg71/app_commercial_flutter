import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseConnect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff0001FC),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 67,
              ),
              Text(
                "Connection",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'sfpro', fontSize: 24),
              ),
              SizedBox(
                height: screen.height * 0.2,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/createaccount');
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(color: Color(0xff0001FC), fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('icongoogle.png'),
                          Text(
                            "Connect with Google",
                            style: TextStyle(
                                color: Color(0xff555555), fontSize: 18),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32, bottom: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                      color: Color(0xff415A93),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset('iconfb.png'),
                          Text(
                            "Connect with Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: Text(
                  "Already have an account ? Login",
                  style: TextStyle(color: Color(0xffFBDF00), fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

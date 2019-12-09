import 'package:commercial/account/sign-up/sign_up_viewmodel.dart';
import 'package:commercial/widget/progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => SignUpViewModel(),
      child: SignUpWidget(),
    );
  }
}

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var viewmodel = SignUpViewModel.of(context);
    var formKey = GlobalKey<FormState>();

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
              Form(
                key: formKey,
                child: Container(
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
                        child: TextFormField(
                          validator: (value) {
                            print(value+"----");
                            return viewmodel.validName(value);
                          },
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
                        "Phone",
                        style: TextStyle(
                          fontFamily: 'sfpro',
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: TextFormField(
                          validator: (value) {
                            return viewmodel.validPhone(value);
                          },
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 8.0),
                            hintText: "Phone",
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
                        child: TextFormField(
                          validator: (value) {
                            return viewmodel.validPassword(value);
                          },
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
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Colors.white,
                  onPressed: () {
                    var isvalid = formKey.currentState.validate();
                    ProgressBar.Loading(context, true);
                    if (isvalid) {
                      viewmodel.submitSignUp();
                      ProgressBar.Loading(context, false);
                      Navigator.of(context).pushReplacementNamed('/sign-in');

                    }
                  },
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
                      Navigator.of(context).pushReplacementNamed('/sign-in');
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

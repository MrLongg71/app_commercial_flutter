import 'package:commercial/account/sign-in/sign_in_viewmodel.dart';
import 'package:commercial/widget/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInView extends StatefulWidget {
  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // ignore: deprecated_member_use
      builder: (context) => SignInViewModel(),
      child: SignInWidget(),
    );
  }
}

class SignInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fromKey = GlobalKey<FormState>();
    var viewmodel = SignInViewModel.of(context);
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xff0001FC),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 32, right: 32),
            child: Form(
              key: fromKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 67,
                  ),
                  Center(
                    child: Text(
                      "Login",
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
                      children: <Widget>[
                        Text(
                          "Email",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'sfpro',
                              fontSize: 18),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 24),
                          child: TextFormField(
                            validator: (value) {
                              return viewmodel.validatePhone(value);
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Email",
                              contentPadding: EdgeInsets.only(
                                  left: 10.0, top: 10.0, bottom: 8.0),
                              hintStyle: TextStyle(color: Colors.white),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(width: 2.0, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'sfpro',
                              fontSize: 18),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 32),
                          child: TextFormField(
                            validator: (value){
                              return viewmodel.validatePassword(value);
                            },
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Password",
                              contentPadding: EdgeInsets.only(
                                  left: 10.0, top: 10.0, bottom: 8.0),
                              hintStyle: TextStyle(color: Colors.white),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(width: 2.0, color: Colors.white),
                              ),
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
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {
                        var isValid = fromKey.currentState.validate();
                        if (isValid) {
                          ProgressBar.Loading(context,true);
                          viewmodel.submit().then((user){
                            //success
                            ProgressBar.Loading(context,false);
                            Navigator.of(context).pushReplacementNamed('/home');
                          });
                        }
                      },
                      color: Colors.white,
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
                        Navigator.of(context)
                            .pushReplacementNamed('/sign-up');
                      },
                      child: Text(
                        "Don’t have an account? Sign-up",
                        style: TextStyle(color: Color(0xffFBDF00), fontSize: 18),
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}

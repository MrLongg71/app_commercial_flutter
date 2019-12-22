import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              "Email",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Actual email adress",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "j-warden@email.com",style: TextStyle(color: Color(0xff0001FC),fontSize: 16),
            ),
            SizedBox(
              height: 60,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("New email adress",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  Container(
                    width: double.infinity,
                    height: 35,
                    margin: EdgeInsets.only(top: 10,right: 70),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey
                          )
                        ),
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Confirm email adress",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                  Container(
                    width: double.infinity,
                    height: 35,
                    margin: EdgeInsets.only(top: 10,right: 70),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey
                            )
                        ),
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 53,
                    child: RaisedButton(
                      onPressed: (){

                      },
                      child: Text("Confirm modification",style: TextStyle(color: Colors.white,fontSize: 18),),
                      color: Color(0xff1F53E4),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

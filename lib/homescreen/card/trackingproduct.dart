import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TrackingProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Step> listStep = [
      Step(
        title: Text("Shipped"),
        isActive: true,
        state: StepState.complete,
        content: Column(
          children: <Widget>[
            Material(
                color: Colors.white,
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  width: double.infinity,
                  height: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Tracking number",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "UPS",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "LO40569863554NI",
                            style: TextStyle(
                                color: Color(0xff0001FC), fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
      Step(
        title: Text("In transit"),
        isActive: false,
        state: StepState.indexed,
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(),
            )
          ],
        ),
      ),
      Step(
        title: Text("Delivery"),
        isActive: false,
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(),
            ),
          ],
        ),
      )
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Tracking",
          style:
              TextStyle(fontSize: 32, color: Colors.black, fontFamily: 'sfpro'),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
             flex: 1,
              child:  Stepper(
                controlsBuilder: (BuildContext context,
                    {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                  return Row(
                    children: <Widget>[
                      Container(
                        child: null,
                      ),
                      Container(
                        child: null,
                      ),
                    ],
                  );
                },
                type: StepperType.horizontal,
                steps: listStep,
              ),
            ),
            Flexible(
              flex: 2,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (_, int index) {
                  return Container(
                    padding: EdgeInsets.only(left: 16,right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("01/11/19",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Seller shipped your order."),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

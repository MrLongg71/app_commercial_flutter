import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final Text text;

  CardView(this.text);

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 10,
        color: Colors.white,
        child: Container(
          width: double.infinity,
          height: 75,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "$text",
            ),
          ),
        ));
  }
}

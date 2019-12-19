
import 'package:flutter/material.dart';

class Function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xffE0ECF8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/categories');
                },
                child: Icon(Icons.format_list_bulleted,color: Color(0xff0001FC),),
              ),
            ),


            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xffE0Ecf8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.star_border,color: Color(0xff0001FC),),
            ),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xffE0Ecf8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.card_giftcard,color: Color(0xff0001fc),),
            ),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                  color: Color(0xffe0ecf8),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Icon(Icons.group,color: Color(0xff000ffc),),
            )
          ],
        ),
       SizedBox(
         height: 8,
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
           Text("Categories",style: TextStyle(color: Color(0xff1F53E4),fontSize: 14),),
           Text("Favorites",style: TextStyle(color: Color(0xff1F53E4),fontSize: 14),),
           Text("Gifts",style: TextStyle(color: Color(0xff1F53E4),fontSize: 14),),
           Text("Best selling",style: TextStyle(color: Color(0xff1F53E4),fontSize: 14),),
         ],
       ),
      ],
    );
  }
}

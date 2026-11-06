
import 'package:flutter/material.dart';

class Leftmessage extends StatelessWidget{
  String message;
  double width;
  double height;
  Leftmessage({required this.message,this.height=50,this.width=90});
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
       child:  Container(

          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          //padding: EdgeInsets.all(8),
          width: width,
          height: height,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight:Radius.circular(20),bottomLeft:Radius.circular(20),topLeft: Radius.circular(20) ),color:Color(0XFF595653) ),

          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(message,
                  style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
            ),
          ),)
    );
  }

}
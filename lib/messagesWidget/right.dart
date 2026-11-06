import 'package:flutter/material.dart';

class RightMessage extends StatelessWidget {
  String? message;      // was: String message
  String? imagePath;
  double width;
  double height;
  RightMessage({this.message, this.height = 50, this.width = 90, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Color(0XFF168C4B),

      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child:  imagePath != null
        ? ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(imagePath!, fit: BoxFit.cover),
      )
          : Text(
      message ?? "",
      style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold),
    ),
        ),
      ),
    );
  }
}
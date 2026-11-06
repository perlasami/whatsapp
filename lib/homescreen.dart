
import 'package:flutter/material.dart';
import 'package:whatsapp/messagesWidget/leftmessage.dart';
import 'package:whatsapp/messagesWidget/right.dart';

class HomeScrenn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Color(0XFF168C4B),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(Icons.arrow_back_ios,color: Color(0XFFFFFFFF),

          ),
        ),
      title:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
      children: [
      const CircleAvatar(
      radius: 20,
        backgroundImage: AssetImage("assets/images/images.jpg"),
      ),
      const SizedBox(width: 10),
      const Expanded(
        child: Text(
          "John Safwat",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      ],
    ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.call, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.videocam,color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.more_vert, color: Colors.white),
          )
        ],
    ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/whatsapp-image.png"),
                fit: BoxFit.cover,
              ),
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RightMessage(message: "Hello !",),
              Leftmessage(message: "Hello "),
              RightMessage(message: "Hey! Have you ever thought"
                  " about how random moments can sometimes turn into the best memories? It's like the universe loves to surprise us when we least expect it!" ,width: 260,height: 160),
              RightMessage(
                imagePath: "assets/images/route.png",
                width: 250,
                height: 160,
              ),
              Leftmessage(message: "what a great content Tp learn Flutter",width: 250,height: 65,)
            ],
          )
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Color(0XFF168C4B), width: 1),
                ),
                child: Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.camera_alt_outlined, color: Colors.white),
                    Expanded(
                      child: Text(
                        "Type a message....",
                       
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(Icons.send_outlined, color: Colors.white),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFF168C4B),
              ),
              child: Icon(Icons.mic, color: Colors.white),
            ),
          ],
        ),
      ),





    );
  }

}
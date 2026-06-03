import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,size: 25,),
        title: Text("Flutter Demo",
          style: TextStyle(
          fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.orangeAccent,
            fontStyle: FontStyle.italic,
            letterSpacing: 5,
            decoration: TextDecoration.underline,
            wordSpacing: 10,
            height: 1.4
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_none,color: Colors.green,size: 30,),
          Icon(Icons.settings,color: Colors.yellow,size: 40,),
          Icon(Icons.bookmark_border,color: Colors.black,size: 20,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Body"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: (){},
        label: Text("Add"),
        icon: Icon(Icons.add),
          ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Heading"),
            Icon(Icons.person),
            Text("Heading"),
            Text("Heading"),
            Icon(Icons.settings),
            Text("Heading"),
            Text("Heading"),
            Text("Heading"),
            Icon(Icons.notifications_none),
          ],
        ),
      )
    );
  }
}

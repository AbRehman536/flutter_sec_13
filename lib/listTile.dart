import 'package:flutter/material.dart';

class ListtileScreen extends StatelessWidget {
  const ListtileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30)
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/first.jpg"),
              ),
              title: Row(
                children: [
                  Text("Abdullah"),
                  Icon(Icons.circle,size: 10,color: Colors.green,)
                ],
              ),
              subtitle: Text("Hello, How are You?"),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("10:26 AM"),
                  Text("6/11/2026"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

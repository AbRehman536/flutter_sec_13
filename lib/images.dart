import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Images"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  color: Colors.yellow,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP8yGuDDBINqOdIbbrUVrBZvNwCTQMp_0ZCg&s",
                  width: 400,height: 300,fit: BoxFit.cover,)),
          
              Image.asset("assets/images/first.jpg",width: 300,height: 300,),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP8yGuDDBINqOdIbbrUVrBZvNwCTQMp_0ZCg&s",),),

              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/first.jpg"),
                backgroundColor: Colors.blue,
              ),
              ClipOval(
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP8yGuDDBINqOdIbbrUVrBZvNwCTQMp_0ZCg&s",),
              )
            ],
          ),
        ),
      ),
    );
  }
}

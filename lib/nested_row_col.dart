import 'package:flutter/material.dart';

class NestedRowCol extends StatelessWidget {
  const NestedRowCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //borderRadius: BorderRadius.circular(50)
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red,
                        width: 5
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.person,color: Colors.black,),
                    )),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Abdullah"),
                    Text("6/8/2026"),
                  ],
                ),
                SizedBox(width: 150,),
                Icon(Icons.menu)
              ],
            ),
            SizedBox(height: 10,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets. It has survived not only "),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite),
                Icon(Icons.comment),
                Icon(Icons.share),
                Icon(Icons.bookmark_border),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                  , child: Text("Click Me!")),
            )
          ],
        ),
      ) ,
    );
  }
}

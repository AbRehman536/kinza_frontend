import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstagramPost extends StatelessWidget {
  const InstagramPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        centerTitle: true,
        backgroundColor: CupertinoColors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              color: CupertinoColors.systemGrey4,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/ferrari.jpg"),
                    ),
                    title: Text("Abdullah Rehman"),
                    trailing: Text("10:34 AM"),
                  ),
                  Image.asset("assets/images/ferrari.jpg",height: 200,),
                  Row(
                    children: [
                      Icon(Icons.favorite),
                      Icon(Icons.comment),
                      Icon(Icons.share),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

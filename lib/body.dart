import 'package:flutter/material.dart';

class BodyDemo extends StatelessWidget {
  const BodyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Body"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.settings,size: 40,),
          Text("Settings"),
          Icon(Icons.notifications_sharp,size: 40,),
          Text("Notification"),
          Icon(Icons.bookmark,size: 40,),
          Text("Bookmark"),
        ],
      ),
    );
  }
}

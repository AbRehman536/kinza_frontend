import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: CupertinoColors.activeGreen,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.blue,
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/ferrari.jpg"),
              ),
              title: Text("Abdullah Rehman"),
              subtitle: Text("Hello, How are you?"),
              trailing: Text("10:34 AM"),
            ),
          );
        },
      ),
    );
  }
}

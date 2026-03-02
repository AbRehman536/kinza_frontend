import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_outlined,color: Colors.red,size: 30,),
        title: Text("App Bar Demo",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.purple,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_sharp,color: Colors.yellow,size: 40,),
          Icon(Icons.settings,color: Colors.green, size: 50,),
          Icon(Icons.bookmark,color: Colors.orange,size: 20,),
        ],
      ),
    );
  }
}

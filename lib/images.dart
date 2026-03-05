import 'package:flutter/material.dart';

class ImagesDemo extends StatefulWidget {
  const ImagesDemo({super.key});

  @override
  State<ImagesDemo> createState() => _ImagesDemoState();
}

class _ImagesDemoState extends State<ImagesDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Demo"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLat8bZvhXD3ChSXyzGsFVh6qgplm1KhYPKA&s"
              ,width: 400,height: 200,
              fit: BoxFit.fill,),
            ),
            Image.asset("assets/images/ferrari.jpg",width: 300,height: 200,),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/ferrari.jpg"),
              backgroundColor: Colors.red,
            ),
            ClipOval(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLat8bZvhXD3ChSXyzGsFVh6qgplm1KhYPKA&s"),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset("assets/images/ferrari.jpg"),
            )
          ],
        ),
      ),
    );
  }
}

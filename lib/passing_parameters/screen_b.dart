import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  final String name;
  final int age;
  const ScreenB({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Text("Name: $name"),
          Text("Age: $age"),
        ],
      ),
    );
  }
}

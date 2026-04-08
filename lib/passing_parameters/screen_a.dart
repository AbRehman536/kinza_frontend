import 'package:flutter/material.dart';
import 'package:kinza_frontend/passing_parameters/screen_b.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenB(
            name: "Abdullah Rehman",
            age: 25,
          )));
        }, child: Text("Go To Next Screen")),
      ),
    );
  }
}

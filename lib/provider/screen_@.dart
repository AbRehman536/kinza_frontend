import 'package:flutter/material.dart';
import 'package:kinza_frontend/provider/user_provider.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key,});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Text("Name: ${userProvider.getName().toString()}"),
          Text("Age: ${userProvider.getEmail().toString()}"),
        ],
      ),
    );
  }
}

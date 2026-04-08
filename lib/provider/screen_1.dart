import 'package:flutter/material.dart';
import 'package:kinza_frontend/passing_parameters/screen_b.dart';
import 'package:kinza_frontend/provider/screen_@.dart';
import 'package:kinza_frontend/provider/user_provider.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          userProvider.setName("Abdullah Rehman");
          userProvider.setEmail("john.mckinley@examplepetstore.com");
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
        }, child: Text("Go To Next Screen")),
      ),
    );
  }
}

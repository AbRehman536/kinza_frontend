import 'package:flutter/material.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            showDialog(
              barrierDismissible: false
              ,context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Message"),
                  content: Text("Thank you for visiting"),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Back")),
                    TextButton(onPressed: (){}, child: Text("Okay")),
                  ],
                );
              },);
          }, child: Text("Show Dialog Box")),
        ElevatedButton(onPressed: (){
          showModalBottomSheet(
            isDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 500,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Text("Profile",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    Text("Name: Abdullah"),
                    Text("Age: 25"),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Close"))
                  ],),
                ),
              );
            }, );
        }, child: Text("Show Bottom Sheet"))
        ],
      ),
    );
  }
}

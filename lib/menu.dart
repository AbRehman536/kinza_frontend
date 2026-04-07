import 'package:flutter/material.dart';
import 'package:kinza_frontend/login_validation.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Row(
                children: [
                  Icon(Icons.edit),
                  Text("Edit"),
                ],
              )),
              PopupMenuItem(child: Text("Duplicate")),
              PopupMenuItem(child: Text("Save as PDF")),
              PopupMenuItem(child: Text("Send Email")),
            ];
          },),

        ],
      ),
      drawer: Container(
        width: 200,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: DrawerHeader(child: Column(children: [
                  Icon(Icons.person),
                  Text("Abdullah Rehman"),
                  Text("charlesgdawe@examplepetstore.com")
                ],)),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginValidation()));
                },
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text("Chats"),
              ),
              ListTile(
                leading: Icon(Icons.notification_add),
                title: Text("Notifications"),
              ),
              ListTile(
                onTap: (){
                  Navigator.pop(context);
                },
                leading: Icon(Icons.logout_sharp),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

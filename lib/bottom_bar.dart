import 'package:flutter/material.dart';
import 'package:kinza_frontend/gridview.dart';
import 'package:kinza_frontend/multiple_selection.dart';
import 'package:kinza_frontend/nested_row_column.dart';
import 'package:kinza_frontend/text_fileds.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  List<Widget> screenList = [GridviewDemo(), TextFieldsDemo(),MultipleSelection(), NestedRowColumn()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom Bar Demo"),
      //   backgroundColor: Colors.red,
      //   foregroundColor: Colors.white,
      // ),
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          currentIndex: selectedIndex,
          onTap: (value){
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ]),
    );
  }
}

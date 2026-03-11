import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleSelection extends StatefulWidget {
  const SingleSelection({super.key});

  @override
  State<SingleSelection> createState() => _SingleSelectionState();
}

class _SingleSelectionState extends State<SingleSelection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Languages"),
        backgroundColor: CupertinoColors.activeGreen,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            selected: selectedIndex == index,
            selectedTileColor: Colors.blue,
            selectedColor: Colors.white,
            leading: Icon(Icons.language),
            title: Text("$index. English"),
            subtitle: Text("$selectedIndex, English, "),
            trailing: Icon(selectedIndex == index ? Icons.radio_button_checked : Icons.radio_button_off),
          );
        },
      ),
    );
  }
}

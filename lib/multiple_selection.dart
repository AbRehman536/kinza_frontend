import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultipleSelection extends StatefulWidget {
  const MultipleSelection({super.key});

  @override
  State<MultipleSelection> createState() => _MultipleSelectionState();
}

class _MultipleSelectionState extends State<MultipleSelection> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hobbies"),
        backgroundColor: CupertinoColors.activeGreen,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.blue,
            child: ListTile(
              onTap: (){
                if(selectedIndex.contains(index)){
                  selectedIndex.remove(index);
                }
                else{
                  selectedIndex.add(index);
                }
                setState(() {});
              },
              tileColor: selectedIndex.contains(index) ? Colors.blue : Colors.white,
              leading: Icon(Icons.category_rounded),
              title: Text("$index) Football"),
              subtitle: Text("$selectedIndex"),
              trailing: Icon(selectedIndex.contains(index) ? Icons.bookmark : Icons.bookmark_border),
            ),
          );
        },
      ),
    );
  }
}

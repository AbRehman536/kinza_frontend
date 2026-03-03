import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Demo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Add"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {  },
        icon: Icon(Icons.add),
          ),
    );
  }
}

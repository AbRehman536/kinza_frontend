import 'package:flutter/material.dart';

class ExpandFlexible extends StatefulWidget {
  const ExpandFlexible({super.key});

  @override
  State<ExpandFlexible> createState() => _ExpandFlexibleState();
}

class _ExpandFlexibleState extends State<ExpandFlexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Expand Flexible"),
      ),
      body: Row(
        children: [
          Flexible(
              flex: 2,
              child: Container(color: Colors.red)),
          Flexible(
              flex: 2,
              child: Container(color: Colors.yellow)),
        ],
      ),
    );
  }
}

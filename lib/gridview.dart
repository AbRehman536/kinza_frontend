import 'package:flutter/material.dart';

class GridviewDemo extends StatefulWidget {
  const GridviewDemo({super.key});

  @override
  State<GridviewDemo> createState() => _GridviewDemoState();
}

class _GridviewDemoState extends State<GridviewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview Demo"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text("Grid View Demo",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  crossAxisSpacing: 20, mainAxisSpacing: 20, mainAxisExtent: 200, maxCrossAxisExtent: 300
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(color: Colors.red,);
              }, ),
          ),
        ],
      )
    );
  }
}

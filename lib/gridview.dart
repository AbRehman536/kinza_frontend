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
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 200,
          ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.red,
              child: Center(child: Column(
                children: [
                  Icon(Icons.account_balance_outlined),
                  Text("Blue"),
                ],
              ),),
            );
        },
          ),
    );
  }
}

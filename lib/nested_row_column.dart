import 'package:flutter/material.dart';

class NestedRowColumn extends StatelessWidget {
  const NestedRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nested Row Column"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Lorem Ipsum",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20),
              child: Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
                  "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain..."),
            ),
            SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.favorite),
                Column(children: [
                  Icon(Icons.comment),
                  Icon(Icons.comment),
                ],),

                Icon(Icons.bookmark),
                Icon(Icons.share),
              ],)

          ],
        ),
      ),
    );
  }
}

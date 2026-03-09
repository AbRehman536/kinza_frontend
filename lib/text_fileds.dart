import 'package:flutter/material.dart';

class TextFieldsDemo extends StatelessWidget {
  const TextFieldsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("assets/images/login.png"),
            SizedBox(height: 10,),
            Text("Login",style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
              color: Colors.blue
            ),),
            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                label: Text("Email"),
                hint: Text("abdullah@gmail.com"),
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.account_balance_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  label: Text("Password"),
                  hint: Text("123456789"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                )
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                    )
                  )
                  , child: Text("Login")),
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have account ?"),
              TextButton(onPressed: (){}, child: Text("Sign Up"))
            ],)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginValidation extends StatefulWidget {
  const LoginValidation({super.key});

  @override
  State<LoginValidation> createState() => _LoginValidationState();
}

class _LoginValidationState extends State<LoginValidation> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              controller: emailController,
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
              controller: passwordController,
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
              child: ElevatedButton(onPressed: (){
                if(emailController.text.isEmpty){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content:
                  Text("Email is Empty")));
                  return;
                }
                if(passwordController.text != passwordController.text){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content:
                  Text("Password is Empty")));
                  return;
                }
                if(passwordController.text.length < 8){
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content:
                  Text("Password must be more than 8 digits")));
                  return;
                }
              },
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

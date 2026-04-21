import 'package:flutter/material.dart';

class LoginProject extends StatefulWidget {
  const LoginProject({super.key});

  @override
  State<LoginProject> createState() => _LoginProjectState();
}

class _LoginProjectState extends State<LoginProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back,size: 24,color: Color(0xff000000),),
            SizedBox(height: 30,),
            Text("Login",style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Color(0xff121212),
              fontFamily: "Inter"
            ),),
            SizedBox(height: 6,),
            Text("Please enter the mobile number associated with your account."
              ,style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xff949494),
                  fontFamily: "Inter"
              ),),
            TextField(

              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 18,vertical: 16),
                filled: true,
                fillColor: Color(0xffEEF0F6),
                hintText: "+92 3140090925",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xff121212),
                    fontFamily: "Inter"
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Image.asset("assets/images/pakistan.png",width: 24,height: 24,)
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF5934),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                  , child: Text("Send OTP",style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xffFFFFFF),
                      fontFamily: "Inter"
                  ),)),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 56,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(0xff000000).withOpacity(0.1))
                      )
                  ), child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                  Text("Don’t have an account?",style:  TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xffBDBDBD),
                      fontFamily: "Inter"
                  ),),
                  Text("Create Account",style:  TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xffFF5934),
                      fontFamily: "Inter"
                  ),),
                                  ],
                                )),
            )
          ],
        ),
      ),
    );
  }
}

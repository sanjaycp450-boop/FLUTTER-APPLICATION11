import 'package:flutter/material.dart';

import 'sign_in.dart';

class Signin_2 extends StatefulWidget {
  const Signin_2({super.key});

  @override
  State<Signin_2> createState() => _Signin_2State();
}

class _Signin_2State extends State<Signin_2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color(0xff22A79A),
      body: SafeArea(
        child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 10),
             IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back,
              color: Colors.white,
              ),
             ),
             SizedBox(height: 40),
             Center(
              child: RichText(
               text: TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: "Sign up with"),
                  TextSpan(
                    text: "Email",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
               ), 
              ),
             ),
             SizedBox(height: 20),
             Center(
              child: Text(
                "Get chatting with friends and family today by\nsigning up for our chat app!",
                textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
              ),
             ),
             SizedBox(height: 70),
             buildTextField("Your name"),
             SizedBox(height: 30),
             buildPasswordField("Password"),
             SizedBox(height: 30),
             buildPasswordField("Confirm Password"),
             SizedBox(height: 120),
             SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(onPressed: (){

                 Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => sign_in() ,)
                    );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: Text(
                "Create an account",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ),
             ),
             SizedBox(height: 20),
          ],
         ), 
        ),
        ),
        ),
    );
  }
  Widget buildTextField(String label){
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white70),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
  Widget buildPasswordField(String label)
  {
    return TextField(
      obscureText: true,
      style: TextStyle(color:Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white,
        fontSize: 16,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
import 'dart:async' show Timer;

import 'package:flutter/material.dart';

import 'onbording.dart';

class MettiunLikeSplashScreen extends StatefulWidget {
  const MettiunLikeSplashScreen({super.key});

  @override
  State<MettiunLikeSplashScreen> createState() => _MettiunLikeSplashScreenState();
}

class _MettiunLikeSplashScreenState extends State<MettiunLikeSplashScreen> {
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                  (context) =>
                                     Onbording()
            )
            )
         );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF26A69A),
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Image(image:AssetImage('assets/image/JPEG4-removebg-preview 1.png'),width: 200,height: 200,),
            SizedBox(height: 20,),
          
          ],
          
        )
      )
    );
  }
}
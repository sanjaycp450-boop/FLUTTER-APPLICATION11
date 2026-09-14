import 'package:flutter/material.dart';

import 'sign_in.dart';
import 'signin_2.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF24A89A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              const Center(
                child: Image(
                  image: AssetImage(
                    'assets/image/JPEG4-removebg-preview 1.png',
                  ),

                  height: 70,
                ),
              ),

              Center(
                child: const Text(
                  "connect",
                  style:TextStyle(
                    fontSize: 80,
                    color:Colors.white,
                    fontWeight:FontWeight.w300,
                  ),
                ),
              ),
              Center(
                child: const Text(
                  "easily &",
                  style:TextStyle(
                    fontSize:80,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Center(
                child: const Text(
                  "quickly",
                  style:TextStyle(
                    fontSize:80,
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              Center(
                child: const Text(
                  'Our chat app is the perfect way to stay\nconnected with friends and family.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    height: 1.6,
                  ),
                ),
              ),
              const SizedBox(height:8),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialButton(Icons.facebook, Colors.blue),
                  SizedBox(width: 15),
                  socialButton(Icons.g_mobiledata, Colors.orange),
                  SizedBox(width: 15),
                  socialButton(Icons.apple, Colors.white),
                ],
              ),
              const SizedBox(height: 25),
               Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.white.withOpacity(0.3)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "OR",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.white.withOpacity(0.3)),
                  ),
                ],
              ),

              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  onPressed: () {

                     Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>Signin_2() ,)
                    );
                  },
                  child: const Text(
                    "sign up with mail",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 25),

               Center(
                child: GestureDetector(
                     onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => sign_in() ,)
                    );
                    
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white70, fontSize: 18
                      ),
                      children: [
                        TextSpan(text: 'Existing account?'),
                        TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialButton(IconData icon, Color color) {
    return Container(
      width: 70,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white30,
        ),
      ),
      child: Icon(
        icon, color: color, size: 38,
        ),
    );
  }
}

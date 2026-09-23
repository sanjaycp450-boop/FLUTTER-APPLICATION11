import 'package:flutter/material.dart';
import 'package:flutter_application_11/home_1.dart';
// import 'package:flutter_application_11/home_delect.dart';

import 'calls.dart';
import 'choose_screen.dart';
import 'contacts.dart';
// import 'following.dart';
// import 'settings.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}
final screens = [HOME_1(), Calls(), Calls(), Contacts()];
int currentIndex=0;

class _BottomnavState extends State<Bottomnav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:Theme(
    data: Theme.of(context).copyWith(
      canvasColor: Colors.grey,
    ),
   child:     BottomNavigationBar(currentIndex: currentIndex,backgroundColor:Colors.yellow,onTap: (index){
        setState(() {
         currentIndex=index;
       }); 
      },
      items:[
       
            BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? Column(
                      children: [
                        Icon(Icons.chat_bubble_outline, color: Colors.black),
                        SizedBox(height: 14),
                      ],
                    )
                  : Icon(Icons.chat_bubble_outline, color: Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: currentIndex == 1
                  ? Column(
                      children: [
                        Icon(Icons.video_call, color: Colors.black),
                        SizedBox(height: 14),
                      ],
                    )
                  : Icon(Icons.video_call, color: Colors.white),
              label: '',
            ),
        BottomNavigationBarItem(icon: currentIndex==2?Column(children: [Icon(Icons.history,color: Colors.black,),SizedBox(height: 14),]):Icon(Icons.history,color: Colors.white,) ,  label: '',),
        BottomNavigationBarItem(icon: currentIndex==3?Column(children: [Icon(Icons.person,color: Colors.black,),SizedBox(height: 14),]):Icon(Icons.person,color: Colors.white,),  label: '',),
        
      ],
       )),body: screens[currentIndex],
      );
  }
}
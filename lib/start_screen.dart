import 'package:flutter/material.dart';

import 'incoming_calls.dart';
import 'search_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool isRandom = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:  BoxDecoration(
            color: Color(0xff20A090),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Stack(
            children: [

               Positioned(
                top: 25,
                left: 20,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 28,
                ),
              ),

              Positioned(
                top: 27,
                left: MediaQuery.of(context).size.width / 2 - 55,
                child: Container(
                  width: 110,
                  height: 22,
                  decoration: BoxDecoration(
                    color:  Color(0xff18CFA8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [

                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isRandom = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: isRandom
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Random',
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                                color: isRandom
                                    ?  Color(0xff20A090)
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isRandom = false;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: !isRandom
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Oncam',
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                                color: !isRandom
                                    ?  Color(0xff20A090)
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ================= TOP RIGHT ICON =================
              Positioned(
                 top: 27,
                    right: 20,
                    child: Stack(
                       clipBehavior: Clip.none,
                   children: [

                     Container(
        width: 19,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints:   BoxConstraints(),
          onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder: (context)=>IncomingCalls()),
        );

          },
          icon:  Icon(
            Icons.square,
            size: 15,
            color: Color.fromARGB(255, 211, 247, 242),
          ),
        ),
      ),

      Positioned(
        right: -3,
        top: -3,
        child: Container(
          width: 8,
          height: 8,
          decoration:  BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
      ),
    ],
  ),
),

            Positioned(
  top: MediaQuery.of(context).size.height * 0.27,
  left: 20,
  right: 20,
  child: Material(
    elevation: 10,
    shadowColor: Colors.black.withOpacity(0.5),
    shape:  CircleBorder(),
    color: Colors.transparent,
    child: Container(
      height: MediaQuery.of(context).size.width - 40,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 1.3,
        ),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()),
          );
        },
        icon:  Icon(
          Icons.videocam,
          color: Colors.white,
          size: 65,
        ),
      ),
    ),
  ),
),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.69,
                left: 0,
                right: 0,
                child:  Center(
                  child: Text(
                    'Tap the screen to start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 45,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Circular arrow icon
                    Container(
                      width: 25,
                      height: 25,
                      decoration:  BoxDecoration(
                        color: Color(0xff72E5E5),
                        shape: BoxShape.circle,
                      ),
                      child:  Icon(
                        Icons.north_east,
                        color: Color(0xff20A090),
                        size: 16,
                      ),
                    ),

                     SizedBox(width: 10),

                     Text(
                      'Female',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
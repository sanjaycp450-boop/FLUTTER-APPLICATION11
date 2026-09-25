import 'dart:ui';
import 'package:flutter/material.dart';

class IncomingCalls extends StatefulWidget {
  const IncomingCalls({super.key});

  @override
  State<IncomingCalls> createState() => _IncomingCallsState();
}

class _IncomingCallsState extends State<IncomingCalls> {
  final String profileImage =
      'assets/image/5089d0afd7d365549c75ce68b98ab14e03fa3bb5.jpg';

  final String backgroundImage =
      'assets/image/5089d0afd7d365549c75ce68b98ab14e03fa3bb5.jpg';

  double slidePosition = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
  
            Positioned.fill(
              child: Image.asset(
                backgroundImage,
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.48),
                ),
              ),
            ),

            SafeArea(
              child: Padding(
                padding:  EdgeInsets.fromLTRB(
                  18,
                  8,
                  18,
                  0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      '9:41',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Row(
                      children:  [
                        Icon(
                          Icons.signal_cellular_alt,
                          color: Colors.white,
                          size: 14,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.wifi,
                          color: Colors.white,
                          size: 14,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.battery_full,
                          color: Colors.white,
                          size: 17,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: size.height * 0.27,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  // Profile image
                  Container(
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(0.25),
                        width: 1,
                      ),
                      image: DecorationImage(
                        image: AssetImage(profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                   SizedBox(height: 14),

                   Text(
                    'Borsha Akther',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                   SizedBox(height: 4),

                   Text(
                    'Incoming call',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * 0.165,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
        
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                          content: Text('Reminder set'),
                        ),
                      );
                    },
                    child: _callAction(
                      icon: Icons.alarm,
                      label: 'Remind me',
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                          content: Text('Message'),
                        ),
                      );
                    },
                    child: _callAction(
                      icon: Icons.chat_bubble,
                      label: 'Message',
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              left: 32,
              right: 32,
              bottom: 32,
              child: _slideToAnswer(),
            ),
          ],
        ),
      ),
    );
  }


  Widget _callAction({
    required IconData icon,
    required String label,
  }) {
    return Column(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.10),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 18,
          ),
        ),

         SizedBox(height: 6),

        Text(
          label,
          style:  TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _slideToAnswer() {
    return LayoutBuilder(
      builder: (context, constraints) {
        const double sliderHeight = 44;
        const double buttonSize = 36;

        final double maxSlide =
            constraints.maxWidth - buttonSize - 4;

        return Container(
          height: sliderHeight,

          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.35),
            borderRadius: BorderRadius.circular(25),

            // Blue border like your screenshot
            border: Border.all(
              color:  Color(0xff168BFF),
              width: 2,
            ),
          ),

          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              // ------------------------------------------------
              // SLIDE TEXT
              // ------------------------------------------------
              Center(
                child: Padding(
                  padding:  EdgeInsets.only(
                    left: 42,
                  ),
                  child: Text(
                    'slide to answer',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.90),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              // ------------------------------------------------
              // SLIDING PHONE BUTTON
              // ------------------------------------------------
              Positioned(
                left: slidePosition + 2,
                top: 2,

                child: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    setState(() {
                      slidePosition += details.delta.dx;

                      if (slidePosition < 0) {
                        slidePosition = 0;
                      }

                      if (slidePosition > maxSlide) {
                        slidePosition = maxSlide;
                      }
                    });
                  },

                  onHorizontalDragEnd: (details) {
                    if (slidePosition >= maxSlide * 0.75) {
                      _answerCall();

                      setState(() {
                        slidePosition = 0;
                      });
                    } else {
                      setState(() {
                        slidePosition = 0;
                      });
                    }
                  },

                  child: Container(
                    width: buttonSize,
                    height: buttonSize,

                    decoration:  BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),

                    child:  Icon(
                      Icons.phone,
                      color: Color(0xff20A090),
                      size: 19,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }


  void _answerCall() {
    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Text('Call answered'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
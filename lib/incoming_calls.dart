import 'dart:ui';
import 'package:flutter/material.dart';

import 'videocall.dart';

void main() {
  runApp(const IncomingCallApp());
}

class IncomingCallApp extends StatelessWidget {
  const IncomingCallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Arial', useMaterial3: true),
      home: const IncomingCallPage(),
    );
  }
}

class IncomingCallPage extends StatefulWidget {
  const IncomingCallPage({super.key});

  @override
  State<IncomingCallPage> createState() => _IncomingCallPageState();
}

class _IncomingCallPageState extends State<IncomingCallPage> {
  static const String profileImage =
      'assets/image/5089d0afd7d365549c75ce68b98ab14e03fa3bb5.jpg';

  double dragPosition = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: false,
        bottom: false,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image
              Image.asset(profileImage,
                fit: BoxFit.cover,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 18, sigmaY: 18,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.38)),
              ),

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.22),
                      Colors.black.withOpacity(0.10),
                      Colors.black.withOpacity(0.28),
                    ],
                  ),
                ),
              ),

              const Positioned(
                top: 10,
                left: 17,
                child: Text(
                  '9:41',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const Positioned(top: 10, right: 15, child: _StatusIcons()),

              Positioned(
                top: 162,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 92,
                    height: 92,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(profileImage, fit: BoxFit.cover),
                  ),
                ),
              ),

              const Positioned(
                top: 264,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'Borsha Akther',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.2,
                    ),
                  ),
                ),
              ),

              const Positioned(
                top: 290,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'Incoming call',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 40,
                bottom: 108,
                child: _CallAction(
                  icon: Icons.alarm,
                  label: 'Remind me',
                  onTap: () {},
                ),
              ),

              Positioned(
                right: 39,
                bottom: 108,
                child: _CallAction(
                  icon: Icons.message,
                  label: 'Message',
                  onTap: () {},
                ),
              ),

              Positioned(
                left: 38,
                right: 39,
                bottom: 39,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    const double buttonSize = 36;
                    const double leftPadding = 5;

                    final double maxPosition =
                        constraints.maxWidth - buttonSize - leftPadding;

                    return Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xff666866).withOpacity(0.82),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          // Text
                          const Center(
                            child: Text(
                              'slide to answer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          Positioned(
                            left: dragPosition,
                            top: 4,
                            child: GestureDetector(
                              onHorizontalDragUpdate: (details) {
                                setState(() {
                                  dragPosition += details.delta.dx;

                                  if (dragPosition < leftPadding) {
                                    dragPosition = leftPadding;
                                  }

                                  if (dragPosition > maxPosition) {
                                    dragPosition = maxPosition;
                                  }
                                });
                              },
                              onHorizontalDragEnd: (details) {
                                if (dragPosition >= maxPosition - 10) {
                                  setState(() {
                                    dragPosition = maxPosition;
                                  });

                                  answerCall();
                                } else {
                                  setState(() {
                                    dragPosition = leftPadding;
                                  });
                                }
                              },
                              child: Container(
                                width: buttonSize,
                                height: buttonSize,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CallScreenApp(),
                                      ),
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.phone,
                                    color: Color(0xff20b956),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void answerCall() {
    debugPrint('Call Answered');
  }
}

class _StatusIcons extends StatelessWidget {
  const _StatusIcons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Signal
        SizedBox(
          width: 15,
          height: 12,
          child: CustomPaint(painter: _SignalPainter()),
        ),

        const SizedBox(width: 5),

        const Icon(Icons.wifi, color: Colors.white, size: 15),

        const SizedBox(width: 4),

        Container(
          width: 21,
          height: 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(3),
          ),
          padding: const EdgeInsets.all(1.5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ),
      ],
    );
  }
}

class _SignalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.8
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(1, size.height - 1),
      Offset(1, size.height - 4),
      paint,
    );

    canvas.drawLine(
      Offset(5, size.height - 1),
      Offset(5, size.height - 6),
      paint,
    );

    canvas.drawLine(
      Offset(9, size.height - 1),
      Offset(9, size.height - 8),
      paint,
    );

    canvas.drawLine(
      Offset(13, size.height - 1),
      Offset(13, size.height - 10),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class _CallAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _CallAction({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 70,
        child: Column(
          children: [
            Icon(icon, color: Colors.white, size: 22),

            const SizedBox(height: 7),

            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
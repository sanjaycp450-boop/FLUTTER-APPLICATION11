import 'package:flutter/material.dart';

void main() {
  runApp(const CallScreenApp());
}

class CallScreenApp extends StatelessWidget {
  const CallScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: const CallScreen(),
    );
  }
}

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  double volume = 0.55;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101112),
      body: SafeArea(
        child: Stack(
          children: [

            Positioned.fill(
              child: Image.asset(
                'assets/image/177f7402c83c1e540d4edf2f7f1d597b4f046c3e.png',
                fit: BoxFit.cover,
              ),
            ),

            // Dark overlay to match the screenshot
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.18),
              ),
            ),

            Positioned(
              top: 8,
              left: 12,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const SizedBox(
                  width: 32,
                  height: 32,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 60,
              right: 20,
              child: Container(
                width: 98,
                height: 102,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(
                    color: const Color(0xFF555B5D),
                    width: 1,
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  'assets/image/5089d0afd7d365549c75ce68b98ab14e03fa3bb5.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Positioned(
              left: 13,
              top: MediaQuery.of(context).size.height * 0.48,
              child: Container(
                width: 27,
                height: 91,
                decoration: BoxDecoration(
                  color: const Color(0xFF454547).withOpacity(0.88),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 3,
                            activeTrackColor: const Color(0xFF20C8B4),
                            inactiveTrackColor:
                                Colors.white.withOpacity(0.18),
                            thumbColor: Colors.white,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 3.5,
                            ),
                            overlayShape:
                                SliderComponentShape.noOverlay,
                          ),
                          child: Slider(
                            value: volume,
                            min: 0,
                            max: 1,
                            onChanged: (value) {
                              setState(() {
                                volume = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Icon(
                        Icons.volume_down_outlined,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Microphone
                  _CallButton(
                    icon: Icons.mic_none_rounded,
                    backgroundColor: const Color(0xFF293632),
                    onTap: () {},
                  ),

                  const SizedBox(width: 11),

                  _CallButton(
                    icon: Icons.volume_up_outlined,
                    backgroundColor: const Color(0xFF293632),
                    onTap: () {},
                  ),

                  const SizedBox(width: 11),

                  _CallButton(
                    icon: Icons.videocam_outlined,
                    backgroundColor: const Color(0xFF293632),
                    onTap: () {},
                  ),

                  const SizedBox(width: 11),

                  _CallButton(
                    icon: Icons.chat_bubble_outline_rounded,
                    backgroundColor: const Color(0xFF16B8A8),
                    iconColor: Colors.white,
                    onTap: () {},
                  ),

                  const SizedBox(width: 11),

                  _CallButton(
                    icon: Icons.close_rounded,
                    backgroundColor: const Color(0xFFFF3038),
                    iconColor: Colors.white,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CallButton extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback onTap;

  const _CallButton({
    required this.icon,
    required this.backgroundColor,
    this.iconColor = Colors.white,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 16,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class GroupCall extends StatefulWidget {
  const GroupCall({super.key});

  @override
  State<GroupCall> createState() => _GroupCallState();
}

class _GroupCallState extends State<GroupCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Stack(
            children: [

              Positioned.fill(
                child: Image.asset(
                  'assets/image/d6e3d50637d5487a0ccace707a7efc0a09342676 (1).png',
                  fit: BoxFit.cover,
                ),
              ),

              // Dark overlay
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.25),
                ),
              ),

              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),

                      const Text(
                        'Meeting with\nLora Adom',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          height: 1.12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.8,
                        ),
                      ),

                      const SizedBox(height: 25),

                      Row(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/image/d1ea63aa3624bd91389d9dd713da5018c8ea5f35.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lora Adom',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Meeting organizer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 350),
                      Column(
                        children: [
                          // Dean
                          _messageRow(
                            image: 'assets/image/0977ec41faefc6d1fa8ba42aa093891be0d28afc.jpg',
                            name: 'Dean Renload',
                            message: 'Sounds reasonable',
                            opacity: 0.35,
                          ),

                          const SizedBox(height: 16),

                          // Annie
                          _messageRow(
                            image: 'assets/image/cda654067c6c087951cf2d3486cea41ba7030cb7.png',
                            name: 'Annie Ellison',
                            message: 'What about our profit?',
                            opacity: 1.0,
                          ),

                          const SizedBox(height: 16),

                          // John
                          _messageRow(
                            image: 'assets/image/4e39ef06c74d6ae337f4d1c0eb498e23bbce4997 (1).png',
                            name: 'John Borino',
                            message: 'What led you to this thought?',
                            opacity: 1.0,
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),

                      const Text(
                        'Invited Members',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const SizedBox(height:30),

                      // Members
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _memberAvatar(
                            'assets/image/83d9bef5dedd408fb179d50e15f915fca1d0ba22 (1).jpg',
                            muted: true,
                          ),
                          _memberAvatar(
                            'assets/image/4e39ef06c74d6ae337f4d1c0eb498e23bbce4997 (1).png',
                            muted: false,
                          ),
                          _memberAvatar(
                            'assets/image/90ce17a66134a7587e076d8266580b782687b62f.jpg',
                            muted: true,
                          ),
                          _memberAvatar(
                            'assets/image/67bb5db81a77b003dfba811f7300aeba1582ddd2.jpg',
                            muted: true,
                          ),
                          _memberAvatar(
                            'assets/image/a93b3dbb1b4e5fc8a75a804a1e35bfe88abcce00.jpg',
                            muted: true,
                          ),
                        ],
                      ),

                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Microphone
                            _bottomButton(
                              icon: Icons.mic_none,
                              backgroundColor: Colors.transparent,
                              iconColor: Colors.white,
                              size: 46,
                            ),

                            // Speaker
                            _bottomButton(
                              icon: Icons.volume_up_outlined,
                              backgroundColor:
                                  Colors.white.withOpacity(0.35),
                              iconColor: Colors.white,
                              size: 46,
                            ),

                            // Video
                            _bottomButton(
                              icon: Icons.videocam_outlined,
                              backgroundColor:
                                  Colors.white.withOpacity(0.35),
                              iconColor: Colors.white,
                              size: 46,
                            ),

                            _bottomButton(
                              icon: Icons.chat_bubble_outline,
                              backgroundColor: const Color(0xff20A090),
                              iconColor: Colors.white,
                              size: 46,
                            ),


                            const SizedBox(width: 1),

                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: _bottomButton(
                                icon: Icons.close,
                                backgroundColor: Colors.red,
                                iconColor: Colors.white,
                                size: 46,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _messageRow({
    required String image,
    required String name,
    required String message,
    required double opacity,
  }) {
    return Opacity(
      opacity: opacity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  static Widget _memberAvatar(
    String image, {
    required bool muted,
  }) {
    return SizedBox(
      width: 50,
      height: 62,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),

          // Small microphone badge
          Positioned(
            right: -2,
            bottom: 5,
            child: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: muted ? Colors.white : Colors.black54,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                ),
              ),
              child: Icon(
                muted ? Icons.mic_off : Icons.mic_none,
                size: 13,
                color: muted ? Colors.black : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _bottomButton({
    required IconData icon,
    required Color backgroundColor,
    required Color iconColor,
    required double size,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 24,
      ),
    );
  }
}
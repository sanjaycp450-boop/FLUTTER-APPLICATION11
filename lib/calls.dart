import 'package:flutter/material.dart';

import 'group_call.dart';
import 'start_screen.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {

  Widget _femaleButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 10,
          shadowColor: Colors.black.withOpacity(0.5),
          color: const Color(0xff7416E8),
          shape: const CircleBorder(),
          child: Container(
            width: 67,
            height: 67,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff7416E8),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: ClipOval(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    debugPrint('Female selected');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      'assets/image/697488f82fe35c63cde00c85c39499cf44d1c764.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 40,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        const Text(
          'Female',
          style: TextStyle(
            color: Colors.white,
            fontSize: 7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _bothButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 10,
          shadowColor: Colors.black.withOpacity(0.5),
          color: const Color(0xff20A090),
          shape: const CircleBorder(),
          child: Container(
            width: 67,
            height: 67,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff20A090),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: ClipOval(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    debugPrint('Both selected');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GroupCall(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/image/697488f82fe35c63cde00c85c39499cf44d1c764.png',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 25,
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/image/8d75a9894edefa11eb527031888aeb3b0d76b5c6.png',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 25,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        const Text(
          'Both',
          style: TextStyle(
            color: Colors.white,
            fontSize: 7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
  
  Widget _maleButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 10,
          shadowColor: Colors.black.withOpacity(0.5),
          color: const Color(0xff7416E8),
          shape: const CircleBorder(),
          child: Container(
            width: 67,
            height: 67,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff7416E8),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: ClipOval(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    debugPrint('Male selected');

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StartScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      'assets/image/8d75a9894edefa11eb527031888aeb3b0d76b5c6.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 40,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2),
        const Text(
          'Male',
          style: TextStyle(
            color: Colors.white,
            fontSize: 7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff20A090),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 5),

              const Text(
                'Video chat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 260),

              SizedBox(
                width: 390,
                height: 390,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    // OUTER CIRCLE
                    Container(
                      width: 391,
                      height: 391,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xff5412A9), Color(0xff20A090)],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topLeft,
                        ),
                      ),
                    ),

                    Container(
                      width: 290,
                      height: 290,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xff5412A9), Color(0xff3A1379)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),

                    Container(
                      width: 216,
                      height: 216,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xff7020D0), Color(0xff321A76)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'mattiunlike',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Positioned(
                      left: 54,
                      bottom: 20,
                      child: _femaleButton(),
                    ),

                    Positioned(
                      left: 160,
                      bottom: 0,
                      child: _bothButton(),
                    ),

                    Positioned(
                      right: 35,
                      bottom: 20,
                      child: _maleButton()),
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

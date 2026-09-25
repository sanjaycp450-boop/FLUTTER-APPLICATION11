import 'package:flutter/material.dart';

import 'start_screen.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
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
                "Video chat",
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
                    // Outer circle
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

                    // Middle circle
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

                    // Inner circle
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
                        "mattiunlike",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Female
                    Positioned(
                      left: 54,
                      bottom: 20,
                      child: _profileContainer(
                        image:
                            'assets/image/697488f82fe35c63cde00c85c39499cf44d1c764.png',
                        label: 'Female',
                        backgroundColor: const Color(0xff7416E8),
                        borderColor: Colors.black,
                      ),
                    ),

                    // Both
                    Positioned(
                      left: 160,
                      bottom: 0,
                      child: _profileContainer(
                        image1:
                            'assets/image/697488f82fe35c63cde00c85c39499cf44d1c764.png',
                        image2:
                            'assets/image/8d75a9894edefa11eb527031888aeb3b0d76b5c6.png',
                        label: 'Both',
                        backgroundColor: const Color(0xff20A090),
                        borderColor: Colors.white,
                      ),
                    ),

                    // Male
                    Positioned(
                      right: 35,
                      bottom: 20,
                      child: _profileContainer(
                        image:
                            'assets/image/8d75a9894edefa11eb527031888aeb3b0d76b5c6.png',
                        label: 'Male',
                        backgroundColor: const Color(0xff7416E8),
                        borderColor: Colors.black,
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

  // Profile container
  Widget _profileContainer({
    String? image,
    String? image1,
    String? image2,
    required String label,
    required Color backgroundColor,
    required Color borderColor,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 10,
          shadowColor: Colors.black.withOpacity(0.5),
          shape: const CircleBorder(),
          color: backgroundColor,
          child: Container(
            width: 67,
            height: 67,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              border: Border.all(color: borderColor, width: 2),
            ),
            child: ClipOval(
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartScreen()),
                  );
                  if (label == "Female") {
                    print("Female selected");
                  } else if (label == "Both") {
                    print("Both selected");
                  } else if (label == "Male") {
                    print("Male selected");
                  }
                },
                icon: image1 != null && image2 != null
                    ? Row(
                        children: [
                          Expanded(
                            child: Image.asset(image1, fit: BoxFit.cover),
                          ),
                          Expanded(
                            child: Image.asset(image2, fit: BoxFit.cover),
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          image!, fit: BoxFit.contain),
                      ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 2),

        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 7,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

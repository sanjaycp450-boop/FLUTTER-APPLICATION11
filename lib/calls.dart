import 'package:flutter/material.dart';

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
        color: Color(0xff20A090),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 5),

              Text(
                "Video chat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 70),

              SizedBox(
                width: 390,
                height: 390,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    // OUTER PURPLE CIRCLE
                    Container(
                      width: 390,
                      height: 390,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xff5412A9), Color(0xff30166D)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),

                    Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xff7020D0), Color(0xff321A76)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "mattiunlike",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // FEMALE
                    Positioned(
                      left: 44,
                      bottom: 20,
                      child: _profileContainer(
                        image:
                            'assets/image/697488f82fe35c63cde00c85c39499cf44d1c764.png',
                        label: 'Female',
                        backgroundColor: Color(0xff7416E8),
                        borderColor: Colors.black,
                      ),
                    ),

                    Positioned(
                      left: 160,
                      bottom: 0,
                      child: _profileContainer(
                        image:
                            'assets/image/8d75a9894edefa11eb527031888aeb3b0d76b5c6.png',
                        label: 'Both',
                        backgroundColor: Color(0xff20A090),
                        borderColor: Colors.white,
                      ),
                    ),

                    Positioned(
                      right: 35,
                      bottom: 20,
                      child: _profileContainer(
                        image:
                            'assets/image/8d75a9894edefa11eb527031888aeb3b0d76b5c6.png',

                        label: 'Male',
                        backgroundColor: Color(0xff7416E8),
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

  // PROFILE CONTAINER
  Widget _profileContainer({
    required String image,
    required String label,
    required Color backgroundColor,
    required Color borderColor,
  }) {
    return Column(
      children: [
        Container(
          width: 67,
          height: 67,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            border: Border.all(color: borderColor, width: 2),
          ),
          child: ClipOval(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                image,
                width: 57,
                height: 57,
                fit: BoxFit.contain,

                // Shows an error if the asset path is wrong
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  );
                },
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

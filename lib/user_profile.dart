import 'package:flutter/material.dart';

class ProfileDetailsPage extends StatefulWidget {
  const ProfileDetailsPage({super.key});

  @override
  State<ProfileDetailsPage> createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> {


  final String profileImage =
      'assets/image/Rectangle 1092.png';

  final String mediaImage1 =
      'assets/image/087ce0e4c57750e46295b2aa796e1666503df2eb.jpg';

  final String mediaImage2 =
      'assets/image/7e8d072a8af97bf3d7e3c47219d05654632132a9.jpg';

  final String mediaImage3 =
      'assets/image/Rectangle 1092.png';

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color(0xff20A090),
      extendBodyBehindAppBar: true,

      body: Stack(
        children: [

          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xff20A090),
          ),

          Positioned(
            top: topPadding + 34,
            left: 14,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const SizedBox(
                width: 35,
                height: 35,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          ),


          Positioned(
            top: topPadding + 48,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 84,
                height: 84,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffFDBF3B),
                ),
                child: ClipOval(
                  child: Image.asset(
                    profileImage,
                    width: 84,
                    height: 84,
                    fit: BoxFit.cover,
                    errorBuilder: (
                      context,
                      error,
                      stackTrace,
                    ) {
                      return const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: topPadding + 142,
            left: 0,
            right: 0,
            child: const Center(
              child: Text(
                'Jhon Abraham',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Arial',
                ),
              ),
            ),
          ),


          Positioned(
            top: topPadding + 170,
            left: 0,
            right: 0,
            child: const Center(
              child: Text(
                '@jhonabraham',
                style: TextStyle(
                  color: Color(0xff6CAEA8),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),


          Positioned(
            top: topPadding + 212,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Message
                _actionButton(
                  icon: Icons.chat_bubble_outline,
                  onTap: () {
                    // Message action
                  },
                ),

                const SizedBox(width: 43),

                // Video call
                _actionButton(
                  icon: Icons.videocam_outlined,
                  onTap: () {
                    // Video call action
                  },
                ),

                const SizedBox(width: 43),

                // Phone call
                _actionButton(
                  icon: Icons.phone_outlined,
                  onTap: () {
                    // Phone call action
                  },
                ),

                const SizedBox(width: 43),

                // More
                _actionButton(
                  icon: Icons.more_horiz,
                  onTap: () {
                    // More action
                  },
                ),
              ],
            ),
          ),


          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 295,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),

              child: Column(
                children: [


                  const SizedBox(height: 14),

                  Container(
                    width: 30,
                    height: 4,
                    decoration: BoxDecoration(
                      color: const Color(0xffE4E4E4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),


                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 12,
                        top: 22,
                        bottom: 30,
                      ),

                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,

                        children: [


                          _infoSection(
                            title: 'Display Name',
                            value: 'Jhon Abraham',
                          ),

                          const SizedBox(height: 55),



                          _infoSection(
                            title: 'Email Address',
                            value:
                                'jhonabraham20@gmail.com',
                          ),

                          const SizedBox(height: 55),


                          _infoSection(
                            title: 'Address',
                            value:
                                '33 street west subidbazar,sylhet',
                          ),

                          const SizedBox(height: 55),


                          _infoSection(
                            title: 'Phone Number',
                            value: '(320) 555-0104',
                          ),

                          const SizedBox(height: 55),


                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: [

                              const Text(
                                'Media Shared',
                                style: TextStyle(
                                  color: Color(0xff808080),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),


                              GestureDetector(
                                onTap: () {
                                  // View all media
                                },
                                child: const Text(
                                  'View All',
                                  style: TextStyle(
                                    color: Color(0xff20A090),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height:20),


                          SizedBox(
                            height: 94,

                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,

                              child: Row(
                                children: [

                                  _mediaImage(
                                    image: mediaImage1,
                                  ),

                                  const SizedBox(width: 20),

                                  _mediaImage(
                                    image: mediaImage2,
                                  ),

                                  const SizedBox(width: 20),

                                  _mediaImageWithOverlay(
                                    image: mediaImage3,
                                    text: '255+',
                                  ),
                                ],
                              ),
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
        ],
      ),
    );
  }


  Widget _actionButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 25,
        height: 25,
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }


  Widget _infoSection({
    required String title,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          title,
          style: const TextStyle(
            color: Color(0xff858585),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(height: 6),

        Text(
          value,
          style: const TextStyle(
            color: Color(0xff101010),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }


  Widget _mediaImage({
    required String image,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),

      child: Image.asset(
        image,
        width: 93,
        height: 94,
        fit: BoxFit.cover,

        errorBuilder: (
          context,
          error,
          stackTrace,
        ) {
          return Container(
            width: 93,
            height: 94,
            decoration: BoxDecoration(
              color: const Color(0xffE8E8E8),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              Icons.image_outlined,
              color: Color(0xff999999),
              size: 30,
            ),
          );
        },
      ),
    );
  }


  Widget _mediaImageWithOverlay({
    required String image,
    required String text,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),

      child: Stack(
        children: [

          // Image
          Image.asset(
            image,
            width: 93,
            height: 94,
            fit: BoxFit.cover,

            errorBuilder: (
              context,
              error,
              stackTrace,
            ) {
              return Container(
                width: 93,
                height: 94,
                color: const Color(0xffE8E8E8),
                child: const Icon(
                  Icons.image_outlined,
                  color: Color(0xff999999),
                  size: 30,
                ),
              );
            },
          ),

          // Dark overlay
          Container(
            width: 93,
            height: 94,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.35),
              borderRadius: BorderRadius.circular(16),
            ),
          ),

          // 255+ text
          Positioned.fill(
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
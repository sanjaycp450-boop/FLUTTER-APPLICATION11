import 'package:flutter/material.dart';

import 'user_profile.dart';

class PeopleSearchPage extends StatefulWidget {
  const PeopleSearchPage({super.key});

  @override
  State<PeopleSearchPage> createState() => _PeopleSearchPageState();
}

class _PeopleSearchPageState extends State<PeopleSearchPage> {
  final TextEditingController searchController =
      TextEditingController(text: '');

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),

                    Container(
                      height: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F4F4),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 11),

                          const Icon(
                            Icons.search,
                            size: 23,
                            color: Colors.black,
                          ),

                          const SizedBox(width: 9),

                          Expanded(
                            child: TextField(
                              controller: searchController,
                              cursorColor: Colors.black,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: () {
                              searchController.clear();
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: Icon(
                                Icons.close,
                                size: 19,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'People',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 35),

                    _personItem(
                      image: 'assets/image/Rectangle 1092.png',
                      name: 'Adil Adnan',
                      subtitle: 'Be your own hero 💪',
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileDetailsPage()),
                       );
                      },
                    ),

                    const SizedBox(height: 55),

                    // PERSON 2
                    _personItem(
                      image: 'assets/image/Rectangle 1094.png',
                      name: 'Bristy Haque',
                      subtitle: 'Keep working 💪',
                      onTap: () {
                        print('Bristy Haque tapped');
                      },
                    ),

                    const SizedBox(height: 55),

                    _personItem(
                      image: 'assets/image/Ellipse 308 (1).png',
                      name: 'John Borino',
                      subtitle: 'Make yourself proud 😍',
                      onTap: () {
                        print('John Borino tapped');
                      },
                    ),

                    const SizedBox(height: 55),

                    const Text(
                      'Group Chat',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 55),


                    _groupItem(
                      images: [
                        'assets/image/47703e9e008ba9602626ca299120a3b4b0e1b7ba.jpg',
                        'assets/image/03f66cbbea24a7bbeb1223b9838715b819075200.jpg',
                        'assets/image/4e39ef06c74d6ae337f4d1c0eb498e23bbce4997.png',
                      ],
                      name: 'Team Align-Practice',
                      members: '4 participants',
                      online: true,
                      onTap: () {
                        print('Team Align-Practice tapped');
                      },
                    ),

                    const SizedBox(height: 35),

                    _groupItem(
                      images: [
                        'assets/image/83d9bef5dedd408fb179d50e15f915fca1d0ba22 (1).jpg',
                        'assets/image/024ae1d74f8874de9c404191e9d50cd4fb7fef34.png',
                        'assets/image/2cec68590c879c2a5c180fb5600a2e8563a10e74.jpg',
                      ],
                      name: 'Team Align',
                      members: '8 participants',
                      online: false,
                      onTap: () {
                        print('Team Align tapped');
                      },
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _personItem({
    required String image,
    required String name,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // PROFILE IMAGE
          ClipOval(
            child: Image.asset(
              image,
              width: 43,
              height: 43,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 43,
                  height: 43,
                  color: const Color(0xFFE5E5E5),
                  child: const Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 25,
                  ),
                );
              },
            ),
          ),

          const SizedBox(width: 12),

          // NAME + SUBTITLE
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 15.5,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111111),
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _groupItem({
    required List<String> images,
    required String name,
    required String members,
    required bool online,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // GROUP PROFILE IMAGES
          SizedBox(
            width: 52,
            height: 46,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // THIRD IMAGE
                Positioned(
                  left: 17,
                  top: 7,
                  child: _groupImage(
                    images[2],
                    32,
                  ),
                ),

                // SECOND IMAGE
                Positioned(
                  left: 8,
                  top: 3,
                  child: _groupImage(
                    images[1],
                    36,
                  ),
                ),

                // FIRST IMAGE
                Positioned(
                  left: 0,
                  top: 0,
                  child: _groupImage(
                    images[0],
                    40,
                  ),
                ),

          
                if (online)
                  Positioned(
                    right: 1,
                    bottom: 0,
                    child: Container(
                      width: 9,
                      height: 9,
                      decoration: BoxDecoration(
                        color: const Color(0xFF00D26A),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 15.5,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111111),
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  members,
                  style: const TextStyle(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF858585),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _groupImage(
    String image,
    double size,
  ) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 1.5,
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          image,
          width: size,
          height: size,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: const Color(0xFFE5E5E5),
              child: Icon(
                Icons.person,
                color: Colors.grey,
                size: size * 0.55,
              ),
            );
          },
        ),
      ),
    );
  }
}
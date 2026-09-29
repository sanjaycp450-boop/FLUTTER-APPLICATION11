import 'package:flutter/material.dart';

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
    final List<Map<String, dynamic>> calls = [
    {
      'name': 'Team Align',
      'time': 'Today, 09:30 AM',
      'type': 'group',
      'images': [
        'assets/image/83d9bef5dedd408fb179d50e15f915fca1d0ba22 (1).jpg',
        'assets/image/024ae1d74f8874de9c404191e9d50cd4fb7fef34.png',
        'assets/image/2cec68590c879c2a5c180fb5600a2e8563a10e74.jpg',
      ],
      'color': const Color(0xff20A090),
    },
    {
      'name': 'Jhon Abraham',
      'time': 'Today, 07:30 AM',
      'type': 'single',
      'image': 'assets/image/Rectangle 1092.png',
      'color': const Color(0xff20A090),
    },
    {
      'name': 'Sabila Sayma',
      'time': 'Yesterday, 07:35 PM',
      'type': 'single',
      'image': 'assets/image/Rectangle 1092 (1).png',
      'color': Colors.red,
    },
    {
      'name': 'Alex Linderson',
      'time': 'Monday, 09:30 AM',
      'type': 'single',
      'image': 'assets/image/Rectangle 1092 (2).png',
      'color': Colors.deepPurple,
    },
    {
      'name': 'Jhon Abraham',
      'time': '03/07/22, 07:30 AM',
      'type': 'single',
      'image': 'assets/image/Rectangle 1092.png',
      'color': Colors.red,
    },
    {
      'name': 'Jhon Borino',
      'time': 'Monday, 09:30 AM',
      'type': 'single',
      'image': 'assets/image/Ellipse 308 (1).png',
      'color': Colors.deepPurple,
    },
  ];


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: const Color(0xff20A090),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _circleButton(
                      icon: Icons.search,
                      onTap: () {
                        // Search action
                      },
                    ),

                    const Text(
                      'Calls',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    _circleButton(
                      icon: Icons.add_call,
                      onTap: () {
                        // Add call action
                      },
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: Column(
                  children: [
                    // Small drag indicator
                    Container(
                      margin: const EdgeInsets.only(top: 13),
                      width: 30,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xffE5E5E5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    // Recent title
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 22,
                          top: 22,
                          bottom: 8,
                        ),
                        child: Text(
                          'Recent',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff111111),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: calls.length,
                        itemBuilder: (context, index) {
                          final call = calls[index];

                          return _callItem(
                            name: call['name'],
                            time: call['time'],
                            type: call['type'],
                            image: call['image'],
                            images: call['images'],
                            iconColor: call['color'],
                          );
                        },
                      ),
                    ),

                   
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 1.2,
          ),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }

  Widget _callItem({
    required String name,
    required String time,
    required String type,
    String? image,
    List<String>? images,
    required Color iconColor,
  }) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffF1F1F1),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          children: [
        

            if (type == 'group')
              _groupProfile(images!)
            else
              _singleProfile(image!),

            const SizedBox(width: 13),


            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff101010),
                    ),
                  ),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      Icon(
                        Icons.phone_in_talk,
                        size: 16,
                        color: iconColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff777777),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                // Audio call
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.phone_in_talk_outlined,
                  size: 22,
                  color: Color(0xff929999),
                ),
              ),
            ),

            const SizedBox(width: 3),


            GestureDetector(
              onTap: () {
                // Video call
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.videocam_outlined,
                  size: 22,
                  color: Color(0xff929999),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _singleProfile(String image) {
    return ClipOval(
      child: Image.asset(
        image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,

        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: 50,
            height: 50,
            color: const Color(0xffEAEAEA),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 28,
            ),
          );
        },
      ),
    );
  }


  Widget _groupProfile(List<String> images) {
    return SizedBox(
      width: 52,
      height: 52,
      child: Stack(
        children: [
          // First image - top/right
          Positioned(
            right: 0,
            top: 0,
            child: _smallGroupImage(
              images[0],
              size: 32,
            ),
          ),

          Positioned(
            left: 0,
            bottom: 0,
            child: _smallGroupImage(
              images[1],
              size: 32,
            ),
          ),

          Positioned(
            right: 0,
            bottom: 0,
            child: _smallGroupImage(
              images[2],
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
  Widget _smallGroupImage(
    String image, {
    double size = 32,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2,
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
              color: const Color(0xffE5E5E5),
              child: const Icon(
                Icons.person,
                size: 18,
                color: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
  Widget _bottomIcon({
    required IconData icon,
    bool selected = false,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 50,
        height: 50,
        child: Icon(
          icon,
          size: 27,
          color: selected ? Colors.black : Colors.black,
        ),
      ),
    );
  }
}
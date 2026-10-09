import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static const Color bgColor = Color(0xff20A090);

  // Users tab selected when page opens
  int selectedTab = 2;

  final List<String> tabs = [
    'Top',
    'Videos',
    'Users',
    'Sounds',
    'Places',
    'Hashtags',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 68,
                child: Row(
                  children: [
                    const SizedBox(width: 19),

                    // BACK BUTTON
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white70,
                        size: 19,
                      ),
                    ),

                    const SizedBox(width: 17),

                    // SEARCH ICON
                    const Icon(
                      Icons.search,
                      color: Colors.white70,
                      size: 24,
                    ),

                    const SizedBox(width: 19),

                    // SEARCH TEXT
                    const Expanded(
                      child: Text(
                        'boykaa full movie',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                    ),

                    // CLOSE BUTTON
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: const BoxDecoration(
                          color: Color(0xffB8B8B8),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Color(0xff333333),
                          size: 14,
                        ),
                      ),
                    ),

                    const SizedBox(width: 18),
                  ],
                ),
              ),
              SizedBox(
                height: 31,
                child: Row(
                  children: List.generate(
                    tabs.length,
                    (index) {
                      return Expanded(
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            setState(() {
                              selectedTab = index;
                            });
                          },
                          child: Column(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    tabs[index],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: selectedTab == index
                                          ? Colors.white
                                          : Colors.white54,
                                      fontSize: 10,
                                      fontWeight: selectedTab == index
                                          ? FontWeight.w600
                                          : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),

                              // SELECTED TAB LINE
                              if (selectedTab == index)
                                Container(
                                  height: 2,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              Container(
                height: 1,
                color: Colors.white38,
              ),

              Expanded(
                child: _getTabContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _getTabContent() {
    switch (selectedTab) {
      case 0:
        return _topContent();

      case 1:
        return _videosContent();

      case 2:
        return _usersContent();

      case 3:
        return _soundsContent();

      case 4:
        return _placesContent();

      case 5:
        return _hashtagsContent();

      default:
        return _usersContent();
    }
  }


  Widget _topContent() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 20,
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // USERS TITLE
          Row(
            children: [
              const Text(
                'Users',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              const Text(
                'see more',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 9,
                ),
              ),
              const SizedBox(width: 7),
              const Icon(
                Icons.chevron_right,
                color: Colors.white70,
                size: 17,
              ),
            ],
          ),

          const SizedBox(height: 17),

          _userItem(
            image:
                'assets/image/1314845182e225e5bd6faf5f88081773d5031ffd.png',
            username: 'boykaa.pubjii game',
            name: 'boykaa',
            details: '555532 followers · 234 videos',
          ),

          const SizedBox(height: 15),

          _userItem(
            image:
                'assets/image/f20dee0f970d0386f59cbba9f60ec91e9ca890ec.png',
            username: 'boykaa.full movie',
            name: 'boykaa',
            details: '555532 followers · 234 videos',
          ),

          const SizedBox(height: 20),

        
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _videoCard(
                  image:
                      'assets/image/8800f3d252e8b3e6a88d4cfa0f1b57b5aa47c66d (1).png',
                      
                  topLike: true,
                  date: '11/21/2022',
                 
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 105,
                      height: 83,
                      margin: const EdgeInsets.only(top: 100),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // White comment box
                          Container(
                            width: 105,
                            height: 43,
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 8,
                              top: 10,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Small profile image
                                ClipOval(
                                  child: Image.asset(
                                    'assets/image/33f65305c560c35ebf50650599a64ed83a33593d.png',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                const SizedBox(width: 20),

                                // Comment text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Reply to id 3421',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 5,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      const Text(
                                        'comment',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 7,
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      const Text(
                                        'MY favorite boykaas',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 6,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Small pointed tail
                          Positioned(
                            left: 0,
                            top: 43,
                            child: CustomPaint(size: const Size(11, 10)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    _videoCard(
                      image:
                          'assets/image/2313ff651dfd9756145f641d69664045cc28d54c.png',
                      topLike: false,
                      date: '11/21/2022',
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/55262448f673f4659e9c90bdf5a704dfaa4b0194 (1).png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/55262448f673f4659e9c90bdf5a704dfaa4b0194 (1).png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 100),

          Row(
            children: [
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/33f65305c560c35ebf50650599a64ed83a33593d.png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/55262448f673f4659e9c90bdf5a704dfaa4b0194 (1).png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 9),

          Row(
            children: [
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



Widget _videosContent() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          // First row: Videos
          Row(
            children: [
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/92d2a21a9c2946aa45bd7fbeebb52766238eee3f (1).png',
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/8e8bc90c4431a5fc06f30229c0fddc5727694cd9 (1).png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // First row: Video information
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 9),

          // Second row: Videos
          Row(
            children: [
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/d6daedc431724da7f805ac878779a0a2b5f4a9de (1).png',
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/5418a135df05f7be7256767a39e34f13b07eb4ae (1).png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Second row: Video information
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 9),

          // Third row: Videos
          Row(
            children: [
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/33f65305c560c35ebf50650599a64ed83a33593d.png',
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/55262448f673f4659e9c90bdf5a704dfaa4b0194 (1).png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Third row: Video information
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _videoInfo(
                  profile:
                      'assets/image/fa2e30506863e05306ebdb91f574af11e2c26614.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _usersContent() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(
        left: 20,
        right: 14,
        top: 20,
        bottom: 20,
      ),
      children: [
        _userItem(
          image:
              'assets/image/8adacd3f5a26511ef490d4b61d0632ed5f5b2405.png',
          username: 'boykaa.pubjii game',
          name: 'boykaa',
          details: '555532 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/3891db5c2a15a0a37fee79b09b7c49d7140e3e78.png',
          username: 'boykaa.full movie',
          name: 'boykaa',
          details: '555532 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/cc9fd1187464f0020223b7f7f9cb3b1fd720a6c2.png',
          username: 'boykaa.f2heeeee',
          name: 'boykaa',
          details: '555532 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/7b8cb8f416c9cba789fcd34938362b956a246cb5.png',
          username: 'boykaa.ttttt4443',
          name: 'boykaa',
          details: '555532 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/b78b081c463c7e25ee15b364db7759b409383583.png',
          username: 'boykaa555555555',
          name: 'boykaa',
          details: '555532 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/89242ae28ee3344fd4d0c0d4c7dc2195d660253a.png',
          username: 'boykaa.444444444',
          name: 'boykaa',
          details: '555532 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/a0231c06bf7e21e20f83b4e269303bd1c39df4c0.png',
          username: 'boykaaa.full3444',
          name: 'boykaa',
          details: '999992 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/f2f722e2917ec51dafae41e01d5ae59e6440fb12.png',
          username: 'boykaa.dddddddd',
          name: 'boykaa',
          details: '666666 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/d5c90d79cbd13c66f38fff55bbf5745c2c6e0c83.png',
          username: 'boykaa.44445555',
          name: 'boykaa',
          details: '333333 followers · 234 videos',
        ),

        const SizedBox(height: 35),

        _userItem(
          image:
              'assets/image/1522c37241a2e37f05db66c78971b23fb8a3196c.png',
          username: 'boykaa.5588888',
          name: 'boykaa',
          details: '555532 followers · 234 videos',
        ),
      ],
    );
  }
Widget _soundsContent() {
    final List<Map<String, String>> sounds = [
      {
        'image':
            'assets/image/55262448f673f4659e9c90bdf5a704dfaa4b0194 (1).png',
        'title': 'boykaa.pubjii game',
        'duration': '01:00',
        'videos': '234k videos',
      },
      {
        'image': 'assets/image/508d13b70c8ff36009c509fb558a75dbf28957a7.png',
        'title': 'boykaa.full movie',
        'duration': '01:00',
        'videos': '234k videos',
      },
      {
        'image': 'assets/image/a659570ab60381840f5dfb0c1bee22c82ddc4834.png',
        'title': 'boykaa.f2heeeee',
        'duration': '01:00',
        'videos': '234k videos',
      },
      {
        'image': 'assets/image/26a0572dedb0e5e0c10b7ab9747c62bb181fd03e.png',
        'title': 'boykaa.llllt4443',
        'duration': '01:00',
        'videos': '2354k videos',
      },
      {
        'image': 'assets/image/6e35df98c3a1b0e2626286d0babd0c2e286a3a9c.png',
        'title': 'boykaa55555555',
        'duration': '02:00',
        'videos': '2634k videos',
      },
      {
        'image': 'assets/image/b419c68efd7bdf31a101f9782bf8dc7146274667.png',
        'title': 'boykaa.44444444',
        'duration': '03:00',
        'videos': '2334k videos',
      },
      {
        'image': 'assets/image/af083998ccfbee4fadd7f365a862f3b21e7c4f09.png',
        'title': 'boykaa.full 3444',
        'duration': '03:00',
        'videos': '2334k videos',
      },
      {
        'image': 'assets/image/b419c68efd7bdf31a101f9782bf8dc7146274667.png',
        'title': 'boykaa.ddddddd',
        'duration': '01:00',
        'videos': '2334k videos',
      },
      {
        'image': 'assets/image/4db65cd9ce305ea514c98704b56a9f6180f91f02.png',
        'title': 'boykaa.4444555',
        'duration': '04:00',
        'videos': '2334k videos',
      },
      {
        'image': 'assets/image/26a0572dedb0e5e0c10b7ab9747c62bb181fd03e.png',
        'title': 'boykaa.5588888',
        'duration': '03:00',
        'videos': '23354k videos',
      },
      {
        'image': 'assets/image/b419c68efd7bdf31a101f9782bf8dc7146274667.png',
        'title': 'Boykaa4444444',
        'duration': '02:00',
        'videos': '23234k videos',
      },
    ];

    return Container(
      color: bgColor,
      child: ListView.builder(
      physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          final sound = sounds[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: SizedBox(
              height: 72,
              child: Row(
                children: [
                  // Video thumbnail
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: SizedBox(
                      width: 51,
                      height: 51,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            sound['image']!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.white,
                                child: const Icon(
                                  Icons.play_circle_filled,
                                  color: Colors.red,
                                  size: 35,
                                ),
                              );
                            },
                          ),
                          Container(color: Colors.black.withOpacity(0.12)),
                          const Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 13),

                  // Sound information
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sound['title']!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'boykaa',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${sound['duration']} ${sound['videos']}',
                          maxLines: 1,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Red video button
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: SizedBox(
                      width: 71,
                      height: 28,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your video navigation here.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF2028),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        child: const Icon(
                          Icons.video_call,
                          size: 21,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }


  Widget _placesContent() {
    final List<Map<String, String>> places = [
      {'title': 'Boykataa', 'name': 'boykaa', 'details': '01:00. 234k videos'},
      {
        'title': 'boykaa.metai',
        'name': 'company',
        'details': '01:00. 234k videos',
      },
      {
        'title': 'boykaa.f2beeeee',
        'name': 'boykaa',
        'details': '01:00. 234k videos',
      },
      {
        'title': 'boykaa.11114443',
        'name': 'boykaa',
        'details': '01:00. 2354k videos',
      },
      {
        'title': 'boykaa55555555',
        'name': 'boykaa',
        'details': '02:00. 2634k videos',
      },
      {
        'title': 'boykaa.44444444',
        'name': 'boykaa',
        'details': '03:00. 2334k videos',
      },
      {
        'title': 'boykaa.full 34444',
        'name': 'boykaa',
        'details': '03:00. 2334k videos',
      },
      {
        'title': 'boykaa.dddddddd',
        'name': 'boykaa',
        'details': '01:00. 2334k videos',
      },
      {
        'title': 'boykaa.4444555',
        'name': 'boykaa',
        'details': '04:00. 2334k videos',
      },
      {
        'title': 'boykaa.5588888',
        'name': 'boykaa',
        'details': '03:00. 23354k videos',
      },
      {
        'title': 'Boykaa4444444',
        'name': 'boykaa',
        'details': '02:00. 23234k videos',
      },
    ];

    return Container(
      color: const Color(0xff20A090),
      child: ListView.builder(
      physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        itemCount: places.length,
        itemBuilder: (context, index) {
          final place = places[index];

          return SizedBox(
            height: 69,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 40,
                  child: Icon(Icons.location_on, color: Colors.white, size: 25),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place['title']!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        place['name']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 1),
                      Text(
                        place['details']!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

Widget _hashtagsContent() {
    final List<Map<String, String>> hashtags = [
      {'name': 'boykaafilm', 'views': '2345 views'},
      {'name': 'boyka full farm', 'views': '22225 views'},
      {'name': 'boyka44film', 'views': '12233 views'},
      {'name': 'boykaaf44m', 'views': '12233 views'},
      {'name': 'full movie', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '12233 views'},
      {'name': 'boykaafilm', 'views': '55233 views'},
    ];

    return Container(
      color: const Color(0xff20A090),
      child: ListView.builder(
      physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        itemCount: hashtags.length,
        itemBuilder: (context, index) {
          final hashtag = hashtags[index];

          return SizedBox(
            height: 42,
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                  child: Text(
                    '#',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(width: 21),

                Expanded(
                  child: Text(
                    hashtag['name']!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                Text(
                  hashtag['views']!,
                  style: const TextStyle(
                    color: Color(0xffD0E8E5),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }


  Widget _simpleItem({
    required IconData icon,
    required String title,
  }) {
    return Container(
      height: 55,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 22,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),

          const Icon(
            Icons.chevron_right,
            color: Colors.white70,
            size: 18,
          ),
        ],
      ),
    );
  }


  Widget _userItem({
    required String image,
    required String username,
    required String name,
    required String details,
  }) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          // PROFILE IMAGE
          ClipOval(
            child: SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.white24,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white70,
                      size: 21,
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(width: 9),

          // USER TEXT
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 1),

                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 7,
                  ),
                ),

                const SizedBox(height: 1),

                Text(
                  details,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 6.5,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          // FOLLOW BUTTON
          SizedBox(
            width: 66,
            height: 16,
            child: Material(
              color: const Color(0xffF51D25),
              child: InkWell(
                onTap: () {},
                child: const Center(
                  child: Text(
                    'follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _videoCard({
    required String image,
    required bool topLike,
    required String date,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SizedBox(
        height: 209,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _assetImage(
              image,
              fit: BoxFit.cover,
            ),

            if (topLike)
              Positioned(
                top: 16,
                left: 9,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  color: Colors.black54,
                  child: const Text(
                    'Top like',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                    ),
                  ),
                ),
              ),

            Positioned(
              bottom: 6,
              left: 8,
              child: Text(
                date,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 7,
                ),
              ),
            ),

            const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 38,
              ),
            ),
          ],
        ),
      ),
    );
  }

 

  Widget _smallVideo({
    required String image,
    required double height,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _assetImage(
              image,
              fit: BoxFit.cover,
            ),
            const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 31,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _bottomVideo({
    required String image,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: AspectRatio(
        aspectRatio: 0.93,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _assetImage(
              image,
              fit: BoxFit.cover,
            ),
            const Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 39,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _videoInfo({
    required String profile,
  }) {
    return SizedBox(
      height: 42,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '#fyp/dhhl/',
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
            ),
          ),

          const Text(
            '#viral video',
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
            ),
          ),

          const Spacer(),

          Row(
            children: [
              ClipOval(
                child: SizedBox(
                  width: 14,
                  height: 14,
                  child: Image.asset(
                    profile,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.person,
                        color: Colors.white70,
                        size: 12,
                      );
                    },
                  ),
                ),
              ),

              const Spacer(),

              const Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 12,
              ),

              const SizedBox(width: 3),

              const Text(
                '344k',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 6,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  Widget _assetImage(
    String path, {
    BoxFit fit = BoxFit.cover,
  }) {
    return Image.asset(
      path,
      fit: fit,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.white12,
          child: const Center(
            child: Icon(
              Icons.image_not_supported_outlined,
              color: Colors.white38,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}
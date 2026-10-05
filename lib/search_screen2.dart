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

          const SizedBox(height: 22),

          // VIDEO GRID
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
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  children: [
                    _smallVideo(
                      image:
                          'assets/image/2313ff651dfd9756145f641d69664045cc28d54c.png',
                      height: 81,
                    ),
                    const SizedBox(height: 10),
                    _smallVideo(
                      image:
                          'assets/image/33f65305c560c35ebf50650599a64ed83a33593d.png',
                      height: 100,
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

          const SizedBox(height: 14),

          Row(
            children: [
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/8800f3d252e8b3e6a88d4cfa0f1b57b5aa47c66d (1).png',
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/33f65305c560c35ebf50650599a64ed83a33593d.png',
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
          Row(
            children: [
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/8800f3d252e8b3e6a88d4cfa0f1b57b5aa47c66d (1).png',
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/33f65305c560c35ebf50650599a64ed83a33593d.png',
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/92d2a21a9c2946aa45bd7fbeebb52766238eee3f.png',
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: _bottomVideo(
                  image:
                      'assets/image/92d2a21AziGRT61CE9bvyEo7VeGnPGcovJ2MhmPi.png',
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
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(14),
      children: [
        _simpleItem(
          icon: Icons.music_note,
          title: 'Original sound - boykaa',
        ),
        _simpleItem(
          icon: Icons.music_note,
          title: 'Original sound - full movie',
        ),
        _simpleItem(
          icon: Icons.music_note,
          title: 'Trending sound',
        ),
      ],
    );
  }


  Widget _placesContent() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(14),
      children: [
        _simpleItem(
          icon: Icons.location_on_outlined,
          title: 'Boykaa Place',
        ),
        _simpleItem(
          icon: Icons.location_on_outlined,
          title: 'Popular Places',
        ),
        _simpleItem(
          icon: Icons.location_on_outlined,
          title: 'Nearby Places',
        ),
      ],
    );
  }


  Widget _hashtagsContent() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(14),
      children: [
        _simpleItem(
          icon: Icons.tag,
          title: '#fyp',
        ),
        _simpleItem(
          icon: Icons.tag,
          title: '#viralvideo',
        ),
        _simpleItem(
          icon: Icons.tag,
          title: '#boykaa',
        ),
        _simpleItem(
          icon: Icons.tag,
          title: '#fullmovie',
        ),
        _simpleItem(
          icon: Icons.tag,
          title: '#trending',
        ),
      ],
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
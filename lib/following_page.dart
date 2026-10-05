import 'package:flutter/material.dart';

import 'search_screen2.dart';

class TrendingCreatorsPage extends StatefulWidget {
  const TrendingCreatorsPage({super.key});

  @override
  State<TrendingCreatorsPage> createState() => _TrendingCreatorsPageState();
}

class _TrendingCreatorsPageState extends State<TrendingCreatorsPage> {
  int selectedBottomIndex = 2;


  final String backgroundImage = 'assets/image/c948f11a9688c908f48dd50a198d4acb08fd05b9.png';
  final String profileImage = 'assets/image/7540e3b580693e41cdb79646eed8677f343419e3.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20A497),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
           
                    SizedBox(
                      height: 55,
                      child: Stack(
                        children: [
                          // Following
                          Positioned(
                            left: 73,
                            top: 14,
                            child: Text(
                              'following',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.65),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          // For You
                          Positioned(
                            left: 164,
                            top: 14,
                            child: const Text(
                              'for-you',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),

                          // Active underline
                          Positioned(
                            left: 190,
                            top: 40,
                            child: Container(
                              width: 24,
                              height: 3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),

                          // Search icon
                          Positioned(
                            right: 27,
                            top: 9,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SearchPage (),
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.search,
                                color: Colors.white70,
                                size: 31,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 19,
                          top: 1,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 31),

                    const Text(
                      'Trending Creators',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 17),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        'Follow an account to see their latest videos\nhere.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          height: 1.35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    SizedBox(
                      height: 270,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.only(left: 29),
                        children: [
                          _creatorCard(),

                          const SizedBox(width: 12),

                          // Second card preview
                          _creatorCard(
                            showSecondImage: true,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 170),
                  ],
                ),
              ),
            ),

            _bottomNavigationBar(),
          ],
        ),
      ),
    );
  }


  Widget _creatorCard({
    bool showSecondImage = false,
  }) {
    return Container(
      width: 490,
      height: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black.withOpacity(0.08),
              ),
            ),
          ),

          Positioned(
            top: 103,
            child: Container(
              width: 66,
              height: 66,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: ClipOval(
                child: Image.asset(
                  profileImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            top: 174,
            child: const Text(
              'Natlinna Basanti005',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Positioned(
            top: 192,
            child: const Text(
              '@Natlina_Basanti005',
              style: TextStyle(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
          ),

          Positioned(
            bottom: 29,
            child: SizedBox(
              width: 113,
              height: 26,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF51F1F),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: const Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _bottomNavigationBar() {
    return Container(
      height: 64,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomIcon(
            icon: Icons.chat_bubble,
            index: 0,
          ),

          _bottomIcon(
            icon: Icons.chat_outlined,
            index: 1,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedBottomIndex = 2;
              });
            },
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF20A497),
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.add,
                color: Color(0xFF20A497),
                size: 20,
              ),
            ),
          ),

          _bottomIcon(
            icon: Icons.history,
            index: 3,
          ),

          _bottomIcon(
            icon: Icons.person,
            index: 4,
          ),
        ],
      ),
    );
  }



  Widget _bottomIcon({
    required IconData icon,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBottomIndex = index;
        });
      },
      child: SizedBox(
        width: 42,
        height: 50,
        child: Icon(
          icon,
          color: Colors.black,
          size: index == 0 ? 22 : 25,
        ),
      ),
    );
  }
}
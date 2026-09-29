import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  int selectedBottomIndex = 3;

  final List<Map<String, String>> contacts = [
    {
      'name': 'Afrin Sabila',
      'message': 'Life is beautiful ✨',
      'image': 'assets/image/Rectangle 1092 (1).png',
      'letter': 'A',
    },
    {
      'name': 'Adil Adnan',
      'message': 'Be your own hero 💪',
      'image': 'assets/image/Rectangle 1092.png',
      'letter': 'A',
    },
    {
      'name': 'Bristy Haque',
      'message': 'Keep working ✍️',
      'image': 'assets/image/Rectangle 1094.png',
      'letter': 'B',
    },
    {
      'name': 'John Borino',
      'message': 'Make yourself proud 🧱',
      'image': 'assets/image/Ellipse 308 (1).png',
      'letter': 'B',
    },
    {
      'name': 'Borsha Akther',
      'message': 'Flowers are beautiful 🌸',
      'image': 'assets/image/5089d0afd7d365549c75ce68b98ab14e03fa3bb5.jpg',
      'letter': 'B',
    },
    {
      'name': 'Sheik Sadi',
      'message': 'Life is beautiful ✨',
      'image': 'assets/image/Ellipse 304.png',
      'letter': 'S',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF24A397),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 90,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    // Search
                    _circleButton(icon: Icons.search, onTap: () {}),

                    // Title
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Contacts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    // Add contact
                    _circleButton(
                      icon: Icons.person_add_alt_1_outlined,
                      onTap: () {},
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
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 15),
                      width: 30,
                      height: 3,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE4E4E4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.only(
                          left: 25,
                          right: 35,
                          top: 0,
                          bottom: 5,
                        ),
                        physics: const BouncingScrollPhysics(),
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          final contact = contacts[index];

                          final bool showLetter =
                              index == 0 ||
                              contacts[index - 1]['letter'] !=
                                  contact['letter'];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Letter
                              if (showLetter)
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: index == 0 ? 0 : 5,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    contact['letter']!,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF111111),
                                    ),
                                  ),
                                ),

                              // Contact
                              _contactTile(
                                name: contact['name']!,
                                message: contact['message']!,
                                image: contact['image']!,
                              ),
                            ],
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

  Widget _circleButton({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withOpacity(0.85), width: 1),
        ),
        child: Icon(icon, color: Colors.white, size: 17),
      ),
    );
  }

  Widget _contactTile({
    required String name,
    required String message,
    required String image,
  }) {
    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile image
          ClipOval(
            child: Image.asset(
              image,
              width: 52,
              height: 52,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 38,
                  height: 38,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE5E5E5),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 22,
                  ),
                );
              },
            ),
          ),

          const SizedBox(width: 9),

          // Name + message
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
                    fontSize: 19.5,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF111111),
                  ),
                ),

                const SizedBox(height: 1),

                Text(
                  message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 7.5,
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

  Widget _bottomIcon({required IconData icon, required int index}) {
    final bool selected = selectedBottomIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBottomIndex = index;
        });
      },
      child: SizedBox(
        width: 20,
        height: 20,
        child: Center(
          child: Icon(
            icon,
            size: 21,
            color: selected ? Colors.black : const Color(0xFF111111),
          ),
        ),
      ),
    );
  }
}
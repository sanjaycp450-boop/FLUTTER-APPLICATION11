import 'package:flutter/material.dart';

class Poll extends StatefulWidget {
  const Poll({super.key});

  @override
  State<Poll> createState() => _PollState();
}


class _PollState extends State<Poll> {
  int selectedPoll = 1;

  final List<String> memberImages = [
    'assets/image/cb5c040c009fc2b0d5a63f905b3f73517fdcd9fd.jpg',
    'assets/image/Rectangle 1092.png',
    'assets/image/83d9bef5dedd408fb179d50e15f915fca1d0ba22 (1).jpg',
    'assets/image/Ellipse 308.png',
    'assets/image/Rectangle 1092 (1).png',
    'assets/image/Ellipse 304.png',
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: const Color(0xFFF0FAF9),

      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFFF0FAF9),

          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 20, 30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                     Text(
                      'Create Poll',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF111111),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },

                      child: Container(
                        width: 32,
                        height: 32,

                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.close,
                          size: 18,
                          color: Color(0xFF111111),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 120),

                const Text(
                  'How much you\nlike to using our\nApp',
                  style: TextStyle(
                    fontSize: 40,
                    height: 1.35,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF101717),
                  ),
                ),

                const SizedBox(height: 60),

                _pollOption(
                  index: 0,
                  title: 'Audio call',
                  percentage: '30%',
                ),

                const SizedBox(height: 10),

                _pollOption(
                  index: 1,
                  title: 'Video call',
                  percentage: '90%',
                ),

                const SizedBox(height: 10),

                _pollOption(
                  index: 2,
                  title: 'message',
                  percentage: '20%',
                ),

                const SizedBox(height: 35),

                const Text(
                  'Voted member',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF777777),
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  height: 46,

                  child: Stack(
                    clipBehavior: Clip.none,

                    children: List.generate(
                      memberImages.length,
                      (index) {
                        return Positioned(
                          left: index * 43.0,

                          child: Container(
                            width: 62,
                            height: 50,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                              border: Border.all(
                                color: const Color(0xFFF0FAF9),
                                width: 2,
                              ),
                            ),

                            child: ClipOval(
                              child: Image.asset(
                                memberImages[index],
                                width: 56,
                                height: 56,
                                fit: BoxFit.cover,

                                errorBuilder:
                                    (context, error, stackTrace) {
                                  return Container(
                                    color: const Color(0xFFD7DADA),

                                    child: const Icon(
                                      Icons.person,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _pollOption({
    required int index,
    required String title,
    required String percentage,
  }) {
    final bool selected = selectedPoll == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPoll = index;
        });
      },

      child: Container(
        height: 48,
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),

        clipBehavior: Clip.antiAlias,

        child: Stack(
          children: [

            Align(
              alignment: Alignment.centerLeft,

              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),

                width: selected
                    ? _percentageWidth(percentage)
                    : _percentageWidth(percentage) * 0.72,

                height: 48,

                decoration: BoxDecoration(
                  color: selected
                      ? const Color(0xFF25A89A)
                      : const Color(0xFFDDE7E7),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),

              child: Row(
                children: [

                  Container(
                    width: 16,
                    height: 16,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      color: selected
                          ? Colors.white
                          : Colors.transparent,

                      border: Border.all(
                        color: selected
                            ? Colors.white
                            : const Color(0xFF9AA5A5),

                        width: 1,
                      ),
                    ),

                    child: selected
                        ? const Center(
                            child: SizedBox(
                              width: 6,
                              height: 6,

                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color(0xFF25A89A),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          )
                        : null,
                  ),

                  const SizedBox(width: 10),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(
                        title,

                        style: TextStyle(
                          fontSize: 10,
                          height: 1.1,

                          color: selected
                              ? Colors.white
                              : const Color(0xFF777777),

                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const SizedBox(height: 2),

                      Text(
                        percentage,

                        style: TextStyle(
                          fontSize: 9,
                          height: 1.1,

                          color: selected
                              ? Colors.white
                              : const Color(0xFF222222),

                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  double _percentageWidth(String percentage) {
    final value =
        double.tryParse(
          percentage.replaceAll('%', ''),
        ) ??
        0;

    return MediaQuery.of(context).size.width * (value / 100);
  }
}
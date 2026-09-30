import 'package:flutter/material.dart';

class Sendingfollower extends StatefulWidget {
  const Sendingfollower({super.key});

  @override
  State<Sendingfollower> createState() => _SendingfollowerState();
}

class _SendingfollowerState extends State<Sendingfollower> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Color(0xFF24A295),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF24A295),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 20,
                  top: 8,
                ),
                child: Row(
                  children: [
                    // Time
                    const SizedBox(
                      width: 55,
                      child: Text(
                        '9:45',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    // Title
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Mettifinlike',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.signal_cellular_alt,
                            color: Colors.white,
                            size: 19,
                          ),
                          const SizedBox(width: 13),
                          const Icon(
                            Icons.battery_full,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 5,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFF24A295),
                        size: 19,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 13,
                  right: 13,
                  top: 6,
                ),
                child: Container(
                  height: 1,
                  color: Colors.white54,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    'assets/image/c4420a9e3377509b142df9b0817cf8387191edc4.png',
                    width: 94,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  'NONI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                    top: 7,
                  ),
                  child: Text(
                    'Frame 4',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.22),
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 28,
                  top: 7,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      flex: 4,
                      child: Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'serif',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        'Phone\nnumber',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          height: 1.3,
                          fontFamily: 'serif',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Gift Amount',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'serif',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 14,
                  right: 14,
                  top: 12,
                ),
                child: Container(
                  height: 1,
                  color: Colors.white54,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 22,
                  top: 17,
                ),
                child: Column(
                  children: [
                    _giftRow(
                      name: 'Anikaa\nShinde',
                      phone: '9574047397',
                      amount: 'Rs.1000',
                    ),

                    const SizedBox(height: 45),

                    _giftRow(
                      name: 'Hanii\nDeshpande',
                      phone: '8307750899',
                      amount: 'Rs.700',
                    ),

                    const SizedBox(height: 45),

                    _giftRow(
                      name: 'Boykaa\nHadawale',
                      phone: '9575497292',
                      amount: 'Rs.10000',
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

  static Widget _giftRow({
    required String name,
    required String phone,
    required String amount,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              height: 1.35,
              fontFamily: 'serif',
            ),
          ),
        ),

        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              phone,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'serif',
              ),
            ),
          ),
        ),

        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              amount,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontFamily: 'serif',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Sentgift extends StatefulWidget {
  const Sentgift({super.key});

  @override
  State<Sentgift> createState() => _SentgiftState();
}

class _SentgiftState extends State<Sentgift> {
  final List<Map<String, String>> coins = [
    {
      'amount': '150',
      'offer': 'standard',
      'price': '\$4.33',
      'discount': '',
      'image':
          'assets/image/3b84b759cb8f6cd23d990a7e10544d7d5242b1cd.png',
    },
    {
      'amount': '650',
      'offer': '',
      'price': '\$3333',
      'discount': '15% off',
      'image':
          'assets/image/a4240dcea12b12e2e2b0d1750e4364aa9c5501c9.png',
    },
    {
      'amount': '1050',
      'offer': '',
      'price': '\$2222',
      'discount': '20% off',
      'image':
          'assets/image/b5f1f1a9410368e18ed402d8a39d1eb7aabf325f.png',
    },
    {
      'amount': '3333',
      'offer': '',
      'price': '\$5555',
      'discount': '40% off',
      'image':
          'assets/image/ce99ce45a6de4f7955316a0639430ab28dc260ea.png',
    },
    {
      'amount': '555',
      'offer': '',
      'price': '\$666',
      'discount': '40% off',
      'image':
          'assets/image/e6a09fe8e91AziGRT61CE9bvyEo7VeGnPGcovJ2MhmPi.png',
    },
    {
      'amount': '999',
      'offer': '',
      'price': '\$999',
      'discount': '50% off',
      'image':
          'assets/image/f60f13efa6ff48a487db1358d0c838ac07544bd5.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff00a99d),
      body: SafeArea(
        child: Column(
          children: [      
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Row(
                children: [
                  // Back button
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  // Store title
                   Expanded(
                    child: Center(
                      child: Text(
                        'Store',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  // Coins balance
                  Container(
                    height: 52,
                    width: 125,
                    padding:  EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffffd700),
                                Color(0xffffa000),
                              ],
                            ),
                          ),
                          child:  Icon(
                            Icons.monetization_on,
                            color: Colors.orange,
                            size: 28,
                          ),
                        ),
                      SizedBox(width: 12),
                         Text(
                          "0",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding:  EdgeInsets.fromLTRB(
                  22,
                  8,
                  22,
                  30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // VIP Package title
                    Text(
                      'VIP Package',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 18),

                    Container(
                      width: double.infinity,
                      padding:  EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                               Text(
                                'VIP4 ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                               Icon(
                                Icons.monetization_on,
                                color: Colors.amber,
                                size: 20,
                              ),
                               SizedBox(width: 3),
                               Text(
                                '3000',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                           SizedBox(height: 8),

                          Row(
                            children: [
                               Text(
                                'Get ',
                                style: TextStyle(fontSize: 15),
                              ),
                               Icon(
                                Icons.monetization_on,
                                color: Colors.amber,
                                size: 18,
                              ),
                              Text(
                                ' 3000 coins',
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),

                           SizedBox(height: 7),

                          Text(
                            'Every month',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),

                          SizedBox(height: 20),

                          Container(
                            width: double.infinity,
                            height: 43,
                            decoration: BoxDecoration(
                              color:  Color(0xff00aa9d),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child:  Center(
                              child: Text(
                                '\$ 33,444 / Month \$ 56.66',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 28),

                    // Coins title
                     Text(
                      'Coins',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                     SizedBox(height: 18),

                    GridView.builder(
                      shrinkWrap: true,
                      physics:  NeverScrollableScrollPhysics(),
                      itemCount: coins.length,
                      gridDelegate:
                           SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 18,
                        mainAxisSpacing: 18,
                        childAspectRatio: 0.82,
                      ),
                      itemBuilder: (context, index) {
                        final item = coins[index];

                        return CoinCard(
                          amount: item['amount'] ?? '',
                          offer: item['offer'] ?? '',
                          price: item['price'] ?? '',
                          discount: item['discount'] ?? '',
                          image: item['image'] ?? '',
                        );
                      },
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
}


class CoinCard extends StatelessWidget {
  final String amount;
  final String offer;
  final String price;
  final String discount;
  final String image;

  const CoinCard({
    super.key,
    required this.amount,
    required this.offer,
    required this.price,
    required this.discount,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Discount
          if (discount.isNotEmpty)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding:  EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color:  Color(0xffffe082),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  discount,
                  style:  TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          // Coin image
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return  Icon(
                  Icons.monetization_on,
                  size: 65,
                  color: Colors.amber,
                );
              },
            ),
          ),

           SizedBox(height: 5),

          // Amount
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(
                Icons.monetization_on,
                color: Colors.amber,
                size: 20,
              ),
               SizedBox(width: 4),
              Text(
                amount,
                style:  TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

           SizedBox(height: 6),

          // Offer
          if (offer.isNotEmpty)
            Text(
              offer,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),

           SizedBox(height: 8),

          // Price button
          Container(
            width: double.infinity,
            height: 38,
            decoration: BoxDecoration(
              color:  Color(0xff00aa9d),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
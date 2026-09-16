
import 'package:flutter/material.dart';
import 'package:flutter_application_11/paymentmethod.dart';

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
                          "000",
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

                          SizedBox(
                            width: double.infinity,
                            height: 36,
                            child: ElevatedButton(
                              onPressed: () {
                                showGooglePayBottomSheet(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff00a99d),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
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
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: coins.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Image
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.monetization_on,
                      size: 70,
                      color: Colors.amber,
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Coin amount
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.monetization_on,
                  color: Colors.amber,
                  size: 20,
                ),
                const SizedBox(width: 4),
                Text(
                  amount,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 5),

            // Offer
            if (offer.isNotEmpty)
              Text(
                offer,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),

            // Discount
            if (discount.isNotEmpty)
              Text(
                discount,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),

            const SizedBox(height: 7),

            // Price button
            SizedBox(
              width: double.infinity,
              height: 36,
              child: ElevatedButton(
                onPressed: () {
                  showGooglePayBottomSheet(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff00a99d),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showGooglePayBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        height: 320,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 42,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xff777777), width: 1),
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Google pay",
                style: TextStyle(
                  color: Color(0xff063875),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start by adding a payment method",
                      style: TextStyle(
                        color: Color(0xff063875),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "king@gmail.com",
                      style: TextStyle(color: Color(0xff063875), fontSize: 12),
                    ),

                    SizedBox(height: 38),

                    Text(
                      "Add a payment method to your Google account\n"
                      "to complete your purchase. Your payment\n"
                      "information only visible to Google",
                      style: TextStyle(
                        color: Color(0xff063875),
                        fontSize: 12,
                        height: 1.4,
                      ),
                    ),

                    Spacer(),

                    SizedBox(
                      width: double.infinity,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          print("BUTTON PRESSED");

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Paymentmethod(),
                            ),
                          );
                          // Add your payment logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff20a495),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.credit_card,
                              color: Color(0xff58d9e4),
                              size: 27,
                            ),

                            SizedBox(width: 25),

                            Text(
                              "Add credit or debit card",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
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
    },
  );
}
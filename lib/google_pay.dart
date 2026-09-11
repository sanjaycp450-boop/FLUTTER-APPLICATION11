import 'package:flutter/material.dart';

class GooglePay extends StatefulWidget {
  const GooglePay({super.key});

  @override
  State<GooglePay> createState() => _GooglePayState();
}

class _GooglePayState extends State<GooglePay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: 262,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(
                18,
                12,
                18,
                10,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFF9E9E9E),
                    width: 1,
                  ),
                ),
              ),
              child: const Text(
                "Google pay",
                style: TextStyle(
                  color: Color(0xFF123B75),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            // Main content
            Padding(
              padding: const EdgeInsets.fromLTRB(
                18,
                16,
                18,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Start by adding a payment method",
                    style: TextStyle(
                      color: Color(0xFF123B75),
                      fontSize: 11,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "king@gmail.com",
                    style: TextStyle(
                      color: Color(0xFF123B75),
                      fontSize: 10,
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Text(
                    "Add a payment method to your Google account",
                    style: TextStyle(
                      color: Color(0xFF123B75),
                      fontSize: 9,
                    ),
                  ),

                  const SizedBox(height: 3),

                  const Text(
                    "to complete your purchase. Your payment",
                    style: TextStyle(
                      color: Color(0xFF123B75),
                      fontSize: 9,
                    ),
                  ),

                  const SizedBox(height: 3),

                  const Text(
                    "information only visible to Google",
                    style: TextStyle(
                      color: Color(0xFF123B75),
                      fontSize: 9,
                    ),
                  ),

                  const SizedBox(height: 22),

            
                  SizedBox(
                    width: double.infinity,
                    height: 34,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF24A395),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.credit_card,
                            color: Color(0xFF72D5E5),
                            size: 25,
                          ),

                          SizedBox(width: 18),

                          Text(
                            "Add credit or debit card",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
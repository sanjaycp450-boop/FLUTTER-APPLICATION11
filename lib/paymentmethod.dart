import 'package:flutter/material.dart';

class Paymentmethod extends StatefulWidget {
  const Paymentmethod({super.key});

  @override
  State<Paymentmethod> createState() => _PaymentmethodState();
}

class _PaymentmethodState extends State<Paymentmethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF5F5F5),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            margin:  EdgeInsets.symmetric(horizontal: 20),
            padding:  EdgeInsets.fromLTRB(30, 30, 28, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

               
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon:  Icon(
                        Icons.close,
                        size: 38,
                        color: Colors.black,
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child:  Text(
                        "Done",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),

                 SizedBox(height: 25),

   
                 Text(
                  "Payments methods",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF27A69B),
                  ),
                ),

                 SizedBox(height: 35),

               
                 Text(
                  "choose desired payment type. We offer easy ways\n"
                  "for payments on our app",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.4,
                    color: Colors.black,
                  ),
                ),

                 SizedBox(height: 30),

              
                _paymentCard(
                  selected: true,
                  child: Row(
                    children: [
                       _MasterCardLogo(),

                       SizedBox(width: 35),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            "************4444",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Expires 09/25",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                 SizedBox(height: 20),

              
                _paymentCard(
                  child: Row(
                    children: [
                       SizedBox(width: 40),

                       Text(
                        "VISA",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),

                       SizedBox(width: 60),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            "************3343",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Expires 09/25",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                 SizedBox(height: 20),

               
                _paymentCard(
                  child: Row(
                    children: [
                       SizedBox(width: 38),

                       Text(
                        "P",
                        style: TextStyle(
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8A9EEB),
                        ),
                      ),

                       SizedBox(width: 45),

                       Text(
                        "Petra-stark@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                 SizedBox(height: 45),

                
                 Text(
                  "CURRENT METHOD",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                 SizedBox(height: 20),

                  
                Container(
                  width: double.infinity,
                  padding:  EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 22,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 12,
                        offset:  Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // Cash icon
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                          color:  Color(0xFFFFB51B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Center(
                          child: Icon(
                            Icons.attach_money,
                            size: 38,
                            color: Colors.white,
                          ),
                        ),
                      ),

                       SizedBox(width: 28),

                       Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cash payment",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Default method",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Dropdown
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color:  Color(0xFF164D78),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child:  Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),

                 Spacer(),

             
                SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {
                     
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Color(0xFF27A69B),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child:  Text(
                      "ADD PAYMENT METHOD",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                 SizedBox(height: 45),

                // Bottom indicator
                Center(
                  child: Container(
                    width: 145,
                    height: 4,
                    decoration: BoxDecoration(
                      color:  Color(0xFF164D78),
                      borderRadius: BorderRadius.circular(10),
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

  static Widget _paymentCard({
    required Widget child,
    bool selected = false,
  }) {
    return Container(
      width: double.infinity,
      height: 136,
      padding:  EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        border: selected
            ? Border.all(
                color:  Color(0xFFB55D60),
                width: 2,
              )
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10,
            offset:  Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _MasterCardLogo extends StatelessWidget {
  const _MasterCardLogo();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 10,
            child: Container(
              width: 55,
              height: 55,
              decoration:  BoxDecoration(
                color: Color(0xFFE91D3F),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 10,
            child: Container(
              width: 55,
              height: 55,
              decoration:  BoxDecoration(
                color: Color(0xFFF6B51B),
                shape: BoxShape.circle,
              ),
            ),
          ),
           Text(
            "MasterCard",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
  
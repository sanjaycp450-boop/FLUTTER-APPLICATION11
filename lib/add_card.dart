import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}
class _AddCardState extends State<AddCard> {
  final TextEditingController nameController =
      TextEditingController(text: "Jorden dagoo");

  final TextEditingController cardController =
      TextEditingController(text: "*******-****-******67");

  final TextEditingController expiryController =
      TextEditingController(text: "10/25/2030");

  final TextEditingController cvvController =
      TextEditingController(text: "**********");

  @override
  void dispose() {
    nameController.dispose();
    cardController.dispose();
    expiryController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  Widget _inputField({
    required String label,
    required TextEditingController controller,
    double? width,
  }) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 7),

          TextField(
            controller: controller,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(bottom: 6),

              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff777777),
                  width: 1,
                ),
              ),

              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff777777),
                  width: 1,
                ),
              ),

              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff20a596),
                  width: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 Widget _visaLogo() {
  return Container(
    width: 54,
    height: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color(0xffeeeeee),
      ),
      borderRadius: BorderRadius.circular(2),
    ),
    padding: const EdgeInsets.all(4),
    child: Image.asset(
      'assets/image/7cc7fb73be76a9732b8a8afd82ac533d17a268f7.png',
      fit: BoxFit.contain,
    ),
  );
}

Widget _cardLogo() {
  return Container(
    width: 54,
    height: 30,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color(0xffeeeeee),
      ),
      borderRadius: BorderRadius.circular(3),
    ),
    padding: const EdgeInsets.all(3),
    child: Image.asset(
      'assets/image/500fbc7ec870361fa74336787a3dc2461002770f.png',
      fit: BoxFit.contain,
    ),
  );
}

Widget _masterCardLogo() {
  return Container(
    width: 54,
    height: 30,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color(0xffeeeeee),
      ),
      borderRadius: BorderRadius.circular(2),
    ),
    padding: const EdgeInsets.all(3),
    child: Image.asset(
      'assets/image/0c4e38a78a884faaf0415ae67e43beea39c15874.png',
      fit: BoxFit.contain,
    ),
  );
}

         

  Widget _scanButton() {
    return ElevatedButton.icon(
      onPressed: () {
        // Add card scanner functionality here
      },
      icon: const Icon(
        Icons.crop_free,
        size: 19,
      ),
      label: const Text(
        "Scan card",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff20a596),
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            30,
            20,
            30,
            25,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 29,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 37),


              const Text(
                "Add credit card",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff20a596),
                ),
              ),

              const SizedBox(height: 50),

              _inputField(
                label: "Name",
                controller: nameController,
              ),

              const SizedBox(height: 50),

              _inputField(
                label: "Credit card number",
                controller: cardController,
              ),

              const SizedBox(height: 50),

              _scanButton(),

              const SizedBox(height: 50),


              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _inputField(
                      label: "Expiry",
                      controller: expiryController,
                    ),
                  ),

                  const SizedBox(width: 50),

                  Expanded(
                    child: _inputField(
                      label: "CVV",
                      controller: cvvController,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 90),


              const Text(
                "Debit cards are accepted at some locations and for some categories.",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff777777),
                ),
              ),

              const SizedBox(height: 145),

              Row(
                children: [
                  _visaLogo(),

                  const SizedBox(width: 30),

                  _cardLogo(),

                  const SizedBox(width: 66),

                  _masterCardLogo(),
                ],
              ),

              // Push button to bottom
              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Add payment method functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff20a596),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "ADD PAYMENT METHOD",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 27),


              Center(
                child: Container(
                  width: 99,
                  height: 2,
                  decoration: BoxDecoration(
                    color: const Color(0xff294b68),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
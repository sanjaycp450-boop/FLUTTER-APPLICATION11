import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xff20A090),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration:  BoxDecoration(
            color: Color(0xff20A090),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22),
            ),
          ),
          child: Column(
            children: [
              // Header
              Container(
                height: 52,
                padding:  EdgeInsets.symmetric(horizontal: 18),
                decoration:  BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white54,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  children: [

                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor:  Color(0xff20A090),
                        shape:  CircleBorder(),
                        padding: EdgeInsets.zero,
                        minimumSize:  Size(32, 32),
                        elevation: 2,
                      ),
                      child:  Icon(
                        Icons.arrow_back,
                        size: 12,
                      ),
                    ),

                     Spacer(),

                     Text(
                      "Mettimunlike",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                     Spacer(),

                     SizedBox(width: 23),
                  ],
                ),
              ),

               SizedBox(height: 10),

              Container(
                width: 80,
                height: 80,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child:  Icon(
                  Icons.person_2,
                  size: 55,
                  color: Color(0xff6682A5),
                ),
              ),

               SizedBox(height: 37),

               Text(
                "Anabia songama",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),

               SizedBox(height: 25),

               Text(
                "Anabia283048",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),

               SizedBox(height: 26),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                     Text(
                      "Your communities",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                     SizedBox(height: 6),

                     Divider(
                      color: Colors.white,
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                ),
              ),

               SizedBox(height: 38),

              // Communities
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      _communityItem(
                        image:
                            "assets/image/c799701ef846f9e57da9faebdcd69f4fec0d8bfc.png",
                        name: "Anikaa",
                      ),

                       SizedBox(height: 38),

                      _communityItem(
                        image:
                            "assets/image/c4420a9e3377509b142df9b0817cf8387191edc4.png",
                        name: "Noni",
                      ),

                       SizedBox(height: 38),

                      _communityItem(
                        image:
                            "assets/image/040ec1ac3104c055b6f716d727709714a509553c.png",
                        name: "Hanii",
                      ),

                       SizedBox(height: 38),

                      _communityItem(
                        image:
                            "assets/image/2633ec0ba8607e0b2a8202eacb501ec1fc5d3656.png",
                        name: "Boykaa",
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(
                  right: 25,
                  bottom: 11,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/image/4965c2c92ccdb79d3156a044eefe05adad46663e.png",
                    width: 51,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _communityItem({
    required String image,
    required String name,
  }) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            image,
            width: 38,
            height: 38,
            fit: BoxFit.cover,
          ),
        ),

         SizedBox(width: 12),

        Text(
          name,
          style:  TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
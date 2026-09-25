import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor:  Color(0xff20A090),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin:  EdgeInsets.all(4),
          decoration:  BoxDecoration(
            color: Color(0xff20A090),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Stack(
            children: [

              Positioned(
                top: 22,
                left: 18,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration:  BoxDecoration(
                      color: Color(0xff43B3A7),
                      shape: BoxShape.circle,
                    ),
                    child:  Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),

              // Globe
              Positioned(
                top: 196,
                left: 28,
                right: 28,
                child: Center(
                  child: Container(
                    width: 334,
                    height: 334,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/image/f05eec059cf87640ea68d2203b11103990d1ee62.png',
                        width: 334,
                        height: 334,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return  Center(
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.white,
                              size: 50,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
                  Positioned(
                top: 550,
                left: 20,
                right: 20,
                child: Text(
                  'Searching for new friends.....',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
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
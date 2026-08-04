import 'package:flutter/material.dart';

class Massege extends StatefulWidget {
  final String name;
  final String type;
  final String image;
  final String image1;
  final String image2;
  final String image3;

  const Massege(
    this.image,
    this.image1,
    this.image2,
    this.image3, {
    required this.name,
    required this.type,

    super.key,
  });

  @override
  State<Massege> createState() => _MassegeState();
}

class _MassegeState extends State<Massege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
        title: Row(
          children: [
          
          ],
        ),
        actions: [
    IconButton(
      icon: const Icon(Icons.call_outlined, color: Colors.black),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Call'),
            content: Text('Call ${widget.name}?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // call function here
                },
                child: const Text('Call'),
              ),
            ],
          ),
        );
      },
    ),
    const SizedBox(width: 20),
    const Icon(Icons.videocam_outlined, color: Colors.black),
    const SizedBox(width: 15),
  ],
),
      body: Column(
        children: [
          SizedBox(height: 10),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("Today"),
          ),

          SizedBox(height: 54),

          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15),
              children: [
                /// Sender
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Hello! Jhon abraham",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        "09:25 AM",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),

                /// Receiver
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage(
                        "assets/image/Rectangle 1092.png",
                      ),
                    ),

                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jhon Abraham",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 8),

                        Container(
                      
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text("Hello ! Nazrul How are you?"),
                        ),

                        SizedBox(height: 6),

                        Text(
                          "09:25 AM",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 165),

                /// Receiver 2
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage(
                        "assets/image/Rectangle 1092.png",
                      ),
                    ),

                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jhon Abraham",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 8),

                        Container(
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text("Have a great working week!!"),
                        ),

                        SizedBox(height: 8),

                        Container(
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text("Hope you like it"),
                        ),

                        SizedBox(height: 6),

                        Text(
                          "09:25 AM",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 70),

                /// Voice Message
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 190,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.play_arrow,
                                color: Color(0xff1FAF9A),
                                size: 18,
                              ),
                            ),

                            SizedBox(width: 10),

                            Expanded(
                              child: Row(
                                children: List.generate(
                                  18,
                                  (index) => Expanded(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 1,
                                      ),
                                      height: index % 2 == 0 ? 8 : 14,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 10),

                            Text(
                              "00:16",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "09:25 AM",
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Bottom Input
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.attach_file),

                  SizedBox(width: 8),

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Write your message",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Icon(Icons.camera_alt_outlined),

                  SizedBox(width: 12),

                  Icon(Icons.mic_none),
                ],
              ),
            ),
          ),
          
          
        ],
        
      ),
      
    );
  }
}

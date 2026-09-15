import 'package:flutter/material.dart';

import 'gift.dart';

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
        leading: Icon(Icons.arrow_back, color: Colors.black),
        titleSpacing: 0,
        title: Row(
          children: [
            Stack(
              children: [
                widget.type == 'personal'
                    ? CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(widget.image),
                      )
                    : SizedBox(
                        width: 60,
                        height: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 10,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(widget.image1),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 10,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(widget.image2),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              bottom: 0,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(widget.image3),
                              ),
                            ),
                          ],
                        ),
                      ),
                Positioned(
                  bottom: 2,
                  right: 2,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Active now",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Icon(Icons.call_outlined, color: Colors.black),
          SizedBox(width: 20),
          Icon(Icons.videocam_outlined, color: Colors.black),
          SizedBox(width: 15),
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
                  GestureDetector(
                    onTap: () {

                      buildAttachBottomSheet(context);
                    },
                    child: Icon(Icons.attach_file),
                  ),


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

  void buildAttachBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.78,
          decoration: const BoxDecoration(
            color: Color(0xFF20A99E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 25,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),

                    const Expanded(
                      child: Center(
                        child: Text(
                          "Share Content",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

             
                    const SizedBox(width: 32),
                  ],
                ),
              ),

              // Camera
              _shareItem(
                icon: Icons.camera_alt_outlined,
                title: "Camera",
                subtitle: "",
                onTap: () {
                  Navigator.pop(context);
                  // Camera code here
                },
              ),

              // Documents
              _shareItem(
                icon: Icons.description_outlined,
                title: "Documents",
                subtitle: "Share your files",
                onTap: () {
                  Navigator.pop(context);
                  // Document picker code here
                },
              ),

              // Create a poll
              _shareItem(
                icon: Icons.bar_chart_outlined,
                title: "Create a poll",
                subtitle: "Create a poll for any query",
                onTap: () {
                  Navigator.pop(context);
                  // Poll code here
                },
              ),

              // Media
              _shareItem(
                icon: Icons.image_outlined,
                title: "Media",
                subtitle: "Share photos and videos",
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => GiftPage()));
                  // Gallery code here
                },
              ),

              // Contact
              _shareItem(
                icon: Icons.person_outline,
                title: "Contact",
                subtitle: "Share your contacts",
                onTap: () {
                  Navigator.pop(context);
                  // Contact code here
                },
              ),

              // Location
              _shareItem(
                icon: Icons.location_on_outlined,
                title: "Location",
                subtitle: "Share your location",
                onTap: () {
                  Navigator.pop(context);
                  // Location code here
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Share Content Item
  Widget _shareItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0x4490D8D2), width: 1),
          ),
        ),
        child: Row(
          children: [
            // Circular icon
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xFFF5FFFF),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 38, color: Colors.grey),
            ),

            const SizedBox(width: 25),

            // Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  if (subtitle.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFF17958C),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

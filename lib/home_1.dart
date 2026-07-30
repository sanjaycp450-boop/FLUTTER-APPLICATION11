import 'package:flutter/material.dart';

import 'massege.dart';

class HOME_1 extends StatefulWidget {
  const HOME_1({super.key});

  @override
  State<HOME_1> createState() => _HOME_1State();
}

class _HOME_1State extends State<HOME_1> {
  final List<String> Names = [
    "Adil",
    "Marina",
    "Dean",
    "Max",
    "Adil",
    "Marina",
    "Dean",
    "Max",
  ];

  final List<String> Images = [
    "assets/image/Rectangle 1092.png",
    "assets/image/Rectangle 1092 (1).png",
    "assets/image/Ellipse 304.png",
    "assets/image/Ellipse 308 (1).png",
    "assets/image/Rectangle 1092.png",
    "assets/image/Rectangle 1092 (1).png",
    "assets/image/Ellipse 304.png",
    "assets/image/Ellipse 308 (1).png",
  ];
  final List<Map<String, dynamic>> chats = [
    {
      'image': "assets/image/Rectangle 1092 (2).png",
      'name': "Alex Linderson",
      'message': "How are you?",
      'time': "3 min ago",
      'unread': "3",
      'type': 'personal',
    },
    {
      'image1': "assets/image/83d9bef5dedd408fb179d50e15f915fca1d0ba22.jpg",
      'image2': "assets/image/024ae1d74f8874de9c404191e9d50cd4fb7fef34.png",
      'image3': "assets/image/2cec68590c879c2a5c180fb5600a2e8563a10e74.jpg",
      'name': "Team Align",
      'message': "Don't miss to attend the meeting",
      'time': "2 min ago",
      'unread': null,
      'type': 'group',
    },
    {
      'image': "assets/image/4e39ef06c74d6ae337f4d1c0eb498e23bbce4997.png",
      'name': "John Ahraham",
      'message': "Hey! Can you join the meeting?",
      'time': "2 min ago",
      'unread': null,
      'type': 'personal',
    },
    {
      'image': "assets/image/Rectangle 1092 (1).png",
      'name': "Sabila Sayma",
      'message': "How are you today",
      'time': "2 min ago",
      'unread': null,
      'type': 'personal',
    },
    {
      'image': "assets/image/Ellipse 308 (1).png",
      'name': "John Borino",
      'message': "Have a good day 🌸",
      'time': "2 min ago",
      'unread': null,
      'type': 'personal',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff27A69A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 61, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white70),
                  ),
                  child: Icon(Icons.search, color: Colors.white, size: 30),
                ),

                Text(
                  "HOME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/image/Ellipse 308.png'),
                ),
                // SizedBox(height: 20),
              ],
            ),
          ),

          SizedBox(height: 20),

          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(
                          'assets/image/Ellipse 308.png',
                        ),
                      ),

                      Text("My status"),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 120,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 58),
                        scrollDirection: Axis.horizontal,
                        itemCount: Names.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 58,
                            margin: const EdgeInsets.only(right: 58),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(Images[index]),
                                ),

                                Text(
                                  Names[index],
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 587,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),

            child: ListView.builder(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              itemCount: chats.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap:(){
Navigator.of(context).push(
  MaterialPageRoute(builder: (context)=>Massege(
     chats[index]['image'] ?? '',
  chats[index]['image1'] ?? '',
  chats[index]['image2'] ?? '',
  chats[index]['image3'] ?? '',
  name: chats[index]['name'] ?? '',
  type: chats[index]['type'] ?? '',
  ),)
);




                    },
                    child: ListTile(
                    leading: chats[index]['type'] == 'personal'
                        ? CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(chats[index]['image']),
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
                                    backgroundImage: AssetImage(chats[index]['image1']),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 10,
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundImage: AssetImage(chats[index]['image2']),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  bottom: 0,
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundImage: AssetImage(chats[index]['image3']),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      title: Text(
                        chats[index]['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(chats[index]['message']),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(chats[index]['time']),
                          SizedBox(height: 8),
                          if (chats[index]['unread'] != null)
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  chats[index]['unread'] ?? '',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      //      bottomNavigationBar:BottomNavigationBar(currentIndex: 0,
      // type:BottomNavigationBarType.fixed,
      // items:const[
      //   BottomNavigationBarItem(icon: Icon(Icons.video_call),
      //   label:'',),
      //   BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),
      //   label:'',),
      //   BottomNavigationBarItem(icon:Icon(Icons.history),
      //   label:''
      //   ),
      //   BottomNavigationBarItem(icon: Icon(Icons.person),
      //   label:'',),
      // ]
      // )
    );
  }
}

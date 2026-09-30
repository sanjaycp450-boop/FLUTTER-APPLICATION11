import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedBottomIndex = 0;

  // Add your profile image here
  final String profileImage = 'assets/image/Ellipse 308.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26A69A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF26A69A),
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFF26A69A),
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      ),

      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 113,
              child: Stack(
                children: [
                  // Back button
                  Positioned(
                    left: 22,
                    top: 25,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const SizedBox(
                        width: 40,
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Positioned(
                    top: 25,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: Column(
                  children: [
                    // Small drag indicator
                    Container(
                      margin: const EdgeInsets.only(top: 14),
                      width: 30,
                      height: 4,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE4E7E7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 24, 22, 19),
                      child: Row(
                        children: [
                          // Profile picture
                          ClipOval(
                            child: Image.asset(
                              profileImage,
                              width: 61,
                              height: 61,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 61,
                                  height: 61,
                                  color: const Color(0xFFE4E4F8),
                                  child: const Icon(
                                    Icons.person,
                                    size: 38,
                                    color: Colors.grey,
                                  ),
                                );
                              },
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Nazrul Islam',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF101818),
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Never give up 💪',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF7A7A7A),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Icon(
                            Icons.qr_code_scanner,
                            color: Color(0xFF239B91),
                            size: 26,
                          ),
                        ],
                      ),
                    ),

                    Container(height: 1, color: const Color(0xFFF0F0F0)),

                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(top: 50, bottom: 12),
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          _settingItem(
                            icon: Icons.key_outlined,
                            title: 'Account',
                            subtitle: 'Privacy, security, change number',
                            onTap: () {},
                          ),
                          SizedBox(height: 20),

                          _settingItem(
                            icon: Icons.chat_bubble_outline,
                            title: 'Chat',
                            subtitle: 'Chat history,theme,wallpapers',
                            onTap: () {},
                          ),
                          SizedBox(height: 20),

                          _settingItem(
                            icon: Icons.notifications_none_outlined,
                            title: 'Notifications',
                            subtitle: 'Messages, group and others',
                            onTap: () {},
                          ),
                          SizedBox(height: 20),

                          _settingItem(
                            icon: Icons.help_outline,
                            title: 'Help',
                            subtitle: 'Help center,contact us, privacy policy',
                            onTap: () {},
                          ),
                          SizedBox(height: 20),

                          _settingItem(
                            icon: Icons.swap_vert,
                            title: 'Storage and data',
                            subtitle: 'Network usage, storage usage',
                            onTap: () {},
                          ),
                          SizedBox(height: 20),

                          _settingItem(
                            icon: Icons.group_outlined,
                            title: 'Invite a friend',
                            subtitle: '',
                            onTap: () {},
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
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

  Widget _settingItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: 74,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              // Icon circle
              Container(
                width: 45,
                height: 65,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF1F6F5),
                ),
                child: Icon(icon, size: 24, color: const Color(0xFF7D8786)),
              ),

              const SizedBox(width: 23),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF101818),
                      ),
                    ),

                    if (subtitle.isNotEmpty) ...[
                      const SizedBox(height: 3),
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF777777),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

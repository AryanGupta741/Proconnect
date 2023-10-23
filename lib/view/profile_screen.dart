import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkMode = false;
  // Initially, not in dark mode
  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
      // Toggle dark mode state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(FontAwesomeIcons.chevronLeft), // Left-side icon
          onPressed: () {
            // Handle the left-side icon press
          },
        ),
        actions: [
          // Right-side icons
          IconButton(
            icon: const Icon(
                FontAwesomeIcons.ellipsisVertical), // Right-side icon
            onPressed: () {
              // Handle the right-side icon press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
      // it handle the profile image.
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/profile1.jpg'),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                // it handle the basic detail of the user
                Column(
                  children: [
                    const Text(
                      'Year of Exprence',
                      style:
                          TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
                    ),
                    const Text(
                      '1 Year ago',
                      style:
                          TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Aryan Gupta',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 40.0),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(
              height: 6,
              indent: 40,
              endIndent: 40,
              color: Colors.blueGrey,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            // the handle Manage user basic detail option
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueGrey,
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                leading: const Icon(
                  Icons.person,
                  size: 30,
                ),
                title: const Text(
                  'Manage User',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                ),
                trailing: const Icon(
                    Icons.arrow_forward), // Place the arrow icon at the end
                onTap: () {
                  // Navigate to the desired screen
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Setting',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            // the handle Notification user option
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueGrey,
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                leading: const Icon(
                  Icons.notifications,
                  size: 30,
                ),
                title: const Text(
                  'Notification',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                ),
                trailing: const Icon(
                    Icons.arrow_forward), // Place the arrow icon at the end
                onTap: () {
                  // Navigate to the desired screen
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // the handle Dard_Mode user option
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blueGrey,
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                leading: const Icon(
                  Icons.dark_mode,
                  size: 30,
                ),
                title: const Text(
                  'Dark Mode',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                ),
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    toggleDarkMode();
                  },
                ), // Place the arrow icon at the end
                onTap: () {
                  // Navigate to the desired screen
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // it handle the LogOut process
            logoutButton(),
          ],
        ),
      ),
    );
  }

  ElevatedButton logoutButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue, side: BorderSide.none),
      child: const Text(
        "Logout",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

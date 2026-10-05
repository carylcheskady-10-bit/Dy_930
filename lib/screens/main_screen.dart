import 'package:dy_930/screens/friends_screen.dart';
import 'package:dy_930/screens/newsfeed_screen.dart';
import 'package:dy_930/screens/notification_screen.dart';
import 'package:dy_930/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> pages = const [
    NewsFeedScreen(),
    FriendsScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        currentIndex: currentpage,
        onTap: (index) {
          setState(() {
            currentpage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Friends'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile'),
        ],
      ),
    );
  }
}

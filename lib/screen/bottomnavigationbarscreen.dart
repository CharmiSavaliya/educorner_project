import 'package:educorner_project/screen/bookmarkscreen.dart';
import 'package:educorner_project/screen/chatmessagescreen.dart';
import 'package:educorner_project/screen/homescreen.dart';
import 'package:educorner_project/screen/literaturescreen.dart';
import 'package:educorner_project/screen/profilescreen.dart';
import 'package:flutter/material.dart';

class BottomnavigationbarScreen extends StatefulWidget {
  const BottomnavigationbarScreen({super.key});

  @override
  State<BottomnavigationbarScreen> createState() => _BottomnavigationbarScreenState();
}

class _BottomnavigationbarScreenState extends State<BottomnavigationbarScreen> {
  int currentIndex = 0;

  List screens = [
    const HomeScreen(),
    const LiteratureScreen(),
    const BookmarkScreen(),
    const ChatMessageScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: screens[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              const BottomNavigationBarItem(
                label: 'Home',
                tooltip: 'Home',
                icon: ImageIcon(
                  AssetImage('assets/home.png'),
                  color: Colors.black,
                ),
              ),
              const BottomNavigationBarItem(
                label: "Literature",
                tooltip: "Literature",
                icon: ImageIcon(
                  AssetImage('assets/licterature.png'),
                  color: Colors.black,
                ),
              ),
              const BottomNavigationBarItem(
                label: "Bookmark",
                tooltip: "Bookmark",
                icon: ImageIcon(
                  AssetImage('assets/bookmark.png'),
                  color: Colors.black,
                ),
              ),
              const BottomNavigationBarItem(
                label: "Chats",
                tooltip: "Chats",
                icon: ImageIcon(
                  AssetImage('assets/chat.png'),
                  color: Colors.black,
                ),
              ),
              const BottomNavigationBarItem(
                label: "Profile",
                tooltip: "Profile",
                icon: ImageIcon(
                  AssetImage('assets/profile.png'),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}

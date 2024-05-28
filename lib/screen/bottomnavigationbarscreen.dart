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
    HomeScreen(),
    LiteratureScreen(),
    BookmarkScreen(),
    ChatMessageScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 82, 81, 81),
        body: screens[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                tooltip: 'Home',
                icon: ImageIcon(
                  AssetImage('assets/home.png'),
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: "Literature",
                tooltip: "Literature",
                icon: ImageIcon(
                  AssetImage('assets/licterature.png'),
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: "Bookmark",
                tooltip: "Bookmark",
                icon: ImageIcon(
                  AssetImage('assets/bookmark.png'),
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                label: "Chats",
                tooltip: "Chats",
                icon: ImageIcon(
                  AssetImage('assets/chat.png'),
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
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

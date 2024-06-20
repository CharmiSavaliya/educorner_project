import 'package:educorner_project/screen/bookmarkscreen.dart';
import 'package:educorner_project/screen/chatmessagescreen.dart';
import 'package:educorner_project/screen/homescreen.dart';
import 'package:educorner_project/screen/literaturescreen.dart';
import 'package:educorner_project/screen/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

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
    BookmarkScreen(),
    const ChatMessageScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.blue,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.blue[100]!,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: LineIcons.bookOpen,
                    text: 'Literature',
                  ),
                  GButton(
                    icon: LineIcons.bookmarkAlt,
                    text: 'Bookmark',
                  ),
                  GButton(
                    icon: LineIcons.inbox,
                    text: 'Inbox',
                  ),
                  GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: currentIndex,
                onTabChange: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

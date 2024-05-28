import 'package:educorner_project/screen/profilescreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        )),
                    child: CircleAvatar(
                      radius: 30,
                      foregroundImage: const AssetImage("assets/profilephoto.png"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Hello,Sara!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff344054)),
                  ),
                  Image.asset('assets/hey.png'),
                  SizedBox(width: 80),
                  Image.asset('assets/setting.png'),
                  Image.asset('assets/notification.png'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 26,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: "Search Here ",
                        labelStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        isDense: true,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('assets/tune.png'),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}

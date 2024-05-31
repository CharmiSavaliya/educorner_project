import 'package:educorner_project/screen/callingscreen.dart';
import 'package:educorner_project/screen/homescreen.dart';
import 'package:educorner_project/settingscreens/settingscreen.dart';
import 'package:flutter/material.dart';

class ChatMessageScreen extends StatefulWidget {
  const ChatMessageScreen({super.key});

  @override
  State<ChatMessageScreen> createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(HomeScreen());
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Inbox',
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 380,
                            height: 42,
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Color(0xFF0E74BC),
                                  size: 26,
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                labelText: "Search Here ",
                                labelStyle: const TextStyle(color: Color.fromARGB(255, 44, 131, 202)),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                isDense: true,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/inbox2.png'),
                              backgroundColor: Color(0xffF0F4EF),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/inbox1.png'),
                              backgroundColor: Color(0xffF0F4EF),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/inbox6.png'),
                              backgroundColor: Color(0xffF0F4EF),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/inbox4.png'),
                              backgroundColor: Color(0xffF0F4EF),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 0,
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 160,
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 35, 113, 176),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ChatMessageScreen()),
                              ),
                              child: const Center(
                                child: Text(
                                  "Conversation",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: 160,
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingScreen(),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color.fromARGB(255, 39, 116, 179),
                                width: 2.0,
                              ),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CallingScreen(),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Calls",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Mike Tyson ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'ok thanks',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox1.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '30 mins ago',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Willie Tanner ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'Thank you for help',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox2.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                          Positioned(
                            bottom: 1,
                            right: 0,
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '20 mins ago',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'AI Hub ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'Hi there! How are you?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox3.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '1 hour ago',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Anum Ali ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'Good job!',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox4.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                          Positioned(
                            bottom: 2,
                            right: 0,
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '11:40am',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Designers Hub ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'Keep up the good work!',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox5.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '12:00am',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Emily Cyrus ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'Can you help me in this?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox6.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 50,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        'Yesterday',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Jordan Bechman ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'Yeah! I have submitted',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox7.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                        ],
                      ),
                      trailing: Text(
                        'Yesterday',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Khadija Masod ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'ok',
                        style: TextStyle(color: Colors.grey),
                      ),
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/inbox8.png'),
                            backgroundColor: Color(0xffF0F4EF),
                          ),
                          Positioned(
                            bottom: 2,
                            right: 0,
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        'Yesterday',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

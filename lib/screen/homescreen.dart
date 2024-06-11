import 'package:educorner_project/screen/notificationscreen.dart';
import 'package:educorner_project/screen/profilescreen.dart';
import 'package:educorner_project/settingscreens/settingscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int progressPercentage = 75;
  int progresssPercentage = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              )),
                          child: const CircleAvatar(
                            radius: 30,
                            foregroundImage: AssetImage("assets/profilephoto.png"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Hello,Sara!",
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff344054)),
                        ),
                        Image.asset('assets/hey.png'),
                        const SizedBox(width: 80),
                        InkWell(
                            onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SettingScreen(),
                                  ),
                                ),
                            child: Image.asset('assets/setting.png')),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationScreen(),
                            ),
                          ),
                          child: Image.asset('assets/notification.png'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 325,
                            height: 42,
                            child: TextFormField(
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
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1, // 20% of screen width
                          height: MediaQuery.of(context).size.width * 0.1, // 20% of screen width
                          decoration: BoxDecoration(
                            color: const Color(0xFF0E74BC),
                            borderRadius: BorderRadius.circular(2),
                            image: const DecorationImage(
                              image: AssetImage('assets/tune.png'),
                              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Top Categories',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                            Icon(
                              Icons.web_asset_outlined,
                              color: Color.fromARGB(255, 15, 119, 205),
                            ),
                            Text(
                              "UI UX Design",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 35,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.computer_outlined,
                                color: Color.fromARGB(255, 15, 119, 205),
                              ),
                              Text(
                                "Web Development",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 35,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.mobile_screen_share,
                                color: Color.fromARGB(255, 15, 119, 205),
                              ),
                              Text(
                                "Figma",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Continue Learning',
                        style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 140),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Color.fromARGB(255, 39, 116, 179),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(5, 5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                          Image.asset('assets/python.png'),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Python",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const CircleAvatar(
                                      radius: 20,
                                      foregroundImage: AssetImage("assets/angela.png"),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "Angela White",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          height: 45,
                                          width: 45,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 5,
                                            value: progressPercentage / 100,
                                            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                                            backgroundColor: Colors.grey[300],
                                          ),
                                        ),
                                        Text(
                                          '${progressPercentage.toInt()}%',
                                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "1 Hour remaining",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(5, 5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                          Image.asset('assets/flutter.png'),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Flutter",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const CircleAvatar(
                                      radius: 20,
                                      foregroundImage: AssetImage("assets/harry.png"),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "Harry Wilson",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          height: 45,
                                          width: 45,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 5,
                                            value: progresssPercentage / 100,
                                            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                                            backgroundColor: Colors.grey[300],
                                          ),
                                        ),
                                        Text(
                                          '${progresssPercentage.toInt()}%',
                                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "2 Hours remaining",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'New & Trending Courses',
                        style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 70),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Color.fromARGB(255, 39, 116, 179),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 270,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(5, 3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/rectangle.png',
                              width: 180,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(height: 13),
                            const Padding(
                              padding: EdgeInsets.all(2),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "UI UX Desiging",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.bookmark_border_outlined)
                                  ],
                                ),
                                SizedBox(height: 2),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Beginners Level",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "25 videos",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFFFAF0C),
                                      size: 18,
                                    ),
                                    Text(
                                      "4.9",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 85),
                                    Text(
                                      "\$200",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 270,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: const Offset(5, 3),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/rectangle1.png',
                                  width: 180,
                                  fit: BoxFit.fitWidth,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Digital Marketing",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(Icons.bookmark_border_outlined)
                                      ],
                                    ),
                                    SizedBox(height: 2),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Beginners Level",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          "25 videos",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 1),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFFFFAF0C),
                                          size: 18,
                                        ),
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(width: 85),
                                        Text(
                                          "Free",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Recommended Courses',
                        style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 70),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Color.fromARGB(255, 39, 116, 179),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 270,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(5, 3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/devops.png',
                              width: 180,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(height: 13),
                            const Padding(
                              padding: EdgeInsets.all(2),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "DevOps",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.bookmark_border_outlined)
                                  ],
                                ),
                                SizedBox(height: 2),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Intermediate  Level",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "20 videos",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFFFAF0C),
                                      size: 18,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 85),
                                    Text(
                                      "Free",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 270,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(5, 3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/advance.png',
                              width: 180,
                              fit: BoxFit.fitWidth,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Advanced SEO",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.bookmark_border_outlined)
                                  ],
                                ),
                                SizedBox(height: 2),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Advanced Level",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "20 videos",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFFFAF0C),
                                      size: 18,
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 83),
                                    Text(
                                      "\$350",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

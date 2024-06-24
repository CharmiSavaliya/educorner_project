import 'package:educorner_project/education.model/educationmodel.dart';
import 'package:educorner_project/screen/bookmarkprovider.dart';
import 'package:educorner_project/screen/coursedetailscreen.dart';
import 'package:educorner_project/screen/filterscreen.dart';
import 'package:educorner_project/screen/notificationscreen.dart';
import 'package:educorner_project/screen/profilescreen.dart';
import 'package:educorner_project/settingscreens/settingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int progressPercentage = 75;
  int progresssPercentage = 60;
  int selected = 0;
  List<bool> bookmarkedStatuses = List.filled(courses.length + books.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                topbar(context: context),
                const SizedBox(height: 20),
                search(),
                const SizedBox(height: 20),
                category(),
                const SizedBox(height: 20),
                learning(),
                const SizedBox(height: 20),
                trending(),
                const SizedBox(height: 20),
                recommended(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topbar({required BuildContext context}) {
    return Column(
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
                "Hello, Sara!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff344054)),
              ),
              Image.asset(
                'assets/hey.png',
                height: 50,
                width: 50,
              ),
              const SizedBox(width: 35),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/settings.svg',
                  width: 40.0,
                  height: 40.0,
                ),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/notifications.svg',
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget search() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 345,
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
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FilterScreen(),
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
              color: const Color(0xFF0E74BC),
              borderRadius: BorderRadius.circular(2),
            ),
            child: SvgPicture.asset(
              'assets/filter.svg',
              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget category() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Top Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                      SizedBox(width: 6),
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
                      SizedBox(width: 6),
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
                const SizedBox(width: 6),
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
                      SizedBox(width: 6),
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
        ],
      ),
    );
  }

  Widget learning() {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'Continue Learning',
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 130),
            Text(
              'View All',
              style: TextStyle(
                color: Color.fromARGB(255, 39, 116, 179),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(pythonCourse.image),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pythonCourse.title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  foregroundImage: AssetImage(pythonCourse.instructorImage),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  pythonCourse.instructor,
                                  style: const TextStyle(
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
                                        value: pythonCourse.progressPercentage / 100,
                                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                                        backgroundColor: Colors.grey[300],
                                      ),
                                    ),
                                    Text(
                                      '${pythonCourse.progressPercentage.toInt()}%',
                                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    pythonCourse.timeRemaining,
                                    style: const TextStyle(
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
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(flutterCourse.image),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          flutterCourse.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              foregroundImage: AssetImage(flutterCourse.instructorImage),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              flutterCourse.instructor,
                              style: const TextStyle(
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
                                    value: flutterCourse.progressPercentage / 100,
                                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                                    backgroundColor: Colors.grey[300],
                                  ),
                                ),
                                Text(
                                  '${flutterCourse.progressPercentage.toInt()}%',
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                flutterCourse.timeRemaining,
                                style: const TextStyle(
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
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget trending() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Trending Courses',
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(
                color: Color.fromARGB(255, 39, 116, 179),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return buildCourseCard(courses[index], index);
            },
          ),
        ),
      ],
    );
  }

  Widget buildCourseCard(CourseInfo course, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetailsScreen(course: course),
          ),
        ),
        child: Container(
          height: 280,
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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(
              course.imagePath,
              width: 185,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        course.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Consumer<BookmarkProvider>(
                        builder: (context, bookmarkProvider, child) {
                          bool isBookmarked = bookmarkProvider.isBookmarked(course);
                          return IconButton(
                            icon: Icon(
                              isBookmarked ? Icons.bookmark : Icons.bookmark_border_outlined,
                              color: isBookmarked ? Colors.black : null,
                            ),
                            onPressed: () => bookmarkProvider.toggleBookmark(course),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    course.level,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    course.videoCount,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xFFFFAF0C),
                        size: 18,
                      ),
                      Text(
                        course.rating.toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 90),
                      Text(
                        course.price,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 39, 116, 179),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget recommended() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommended Courses',
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(
                color: Color.fromARGB(255, 39, 116, 179),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: books.length,
            itemBuilder: (context, index) {
              return buildRecommendedCard(books[index], index);
            },
          ),
        ),
      ],
    );
  }

  Widget buildRecommendedCard(CourseInfo books, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetailsScreen(course: books),
          ),
        ),
        child: Container(
          height: 290,
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
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Image.asset(
              books.imagePath,
              width: 185,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        books.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Consumer<BookmarkProvider>(
                        builder: (context, bookmarkProvider, child) {
                          bool isBookmarked = bookmarkProvider.isBookmarked(books);
                          return IconButton(
                            icon: Icon(
                              isBookmarked ? Icons.bookmark : Icons.bookmark_border_outlined,
                              color: isBookmarked ? Colors.black : null,
                            ),
                            onPressed: () => bookmarkProvider.toggleBookmark(books),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    books.level,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    books.videoCount,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xFFFFAF0C),
                        size: 18,
                      ),
                      Text(
                        books.rating.toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 90),
                      Text(
                        books.price,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 39, 116, 179),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

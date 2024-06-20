import 'package:educorner_project/education.model/educationmodel.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatefulWidget {
  final CourseInfo course;

  const CourseDetailsScreen({Key? key, required this.course}) : super(key: key);

  @override
  _CourseDetailsScreenState createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  int _selectedIndex = 0;
  bool _isExpanded = false;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'Course Details',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Image.asset(
              widget.course.imagePath,
              width: 430,
              height: 350,
              fit: BoxFit.fitWidth,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' ${widget.course.title}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${widget.course.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 39, 116, 179),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xFFFFAF0C),
                  size: 18,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${widget.course.rating}',
                        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text: '(1.8k Learners)',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  foregroundImage: AssetImage("assets/profilephoto.png"),
                ),
                SizedBox(width: 5),
                Text(
                  ' Michael Edward',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildTabButton(0, 'Curriculum'),
                    _buildTabButton(1, 'Projects'),
                    _buildTabButton(2, 'Comments'),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: _selectedIndex == 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: const Color(0xffE4EFF7),
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/rectangle.png",
                                        width: 90,
                                        height: 50,
                                      ),
                                      const SizedBox(width: 10),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lesson 1 :',
                                            style: TextStyle(fontSize: 16, color: Colors.black54),
                                          ),
                                          Text(
                                            'Intro to UI UX Designing',
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        icon: Icon(
                                          _isExpanded ? Icons.expand_less : Icons.expand_more,
                                        ),
                                        onPressed: _toggleExpansion,
                                      ),
                                    ],
                                  ),
                                  if (_isExpanded)
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(value: true, onChanged: (bool? value) {}),
                                            const Text('Additional Line 1'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 2'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 3'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 4'),
                                          ],
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              color: const Color(0xffE4EFF7),
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/rectangle.png",
                                        width: 90,
                                        height: 50,
                                      ),
                                      const SizedBox(width: 10),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lesson 2 :',
                                            style: TextStyle(fontSize: 16, color: Colors.black54),
                                          ),
                                          Text(
                                            'Bitcoin Blockchain',
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        icon: Icon(
                                          _isExpanded ? Icons.expand_less : Icons.expand_more,
                                        ),
                                        onPressed: _toggleExpansion,
                                      ),
                                    ],
                                  ),
                                  if (_isExpanded)
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(value: true, onChanged: (bool? value) {}),
                                            const Text('Additional Line 1'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 2'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 3'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 4'),
                                          ],
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              color: const Color(0xffE4EFF7),
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/rectangle.png",
                                        width: 90,
                                        height: 50,
                                      ),
                                      const SizedBox(width: 10),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lesson 3 :',
                                            style: TextStyle(fontSize: 16, color: Colors.black54),
                                          ),
                                          Text(
                                            'Ethereum',
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        icon: Icon(
                                          _isExpanded ? Icons.expand_less : Icons.expand_more,
                                        ),
                                        onPressed: _toggleExpansion,
                                      ),
                                    ],
                                  ),
                                  if (_isExpanded)
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(value: true, onChanged: (bool? value) {}),
                                            const Text('Additional Line 1'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 2'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 3'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 4'),
                                          ],
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              color: const Color(0xffE4EFF7),
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        "assets/rectangle.png",
                                        width: 90,
                                        height: 50,
                                      ),
                                      const SizedBox(width: 10),
                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lesson 4 :',
                                            style: TextStyle(fontSize: 16, color: Colors.black54),
                                          ),
                                          Text(
                                            'Hyperledger',
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        icon: Icon(
                                          _isExpanded ? Icons.expand_less : Icons.expand_more,
                                        ),
                                        onPressed: _toggleExpansion,
                                      ),
                                    ],
                                  ),
                                  if (_isExpanded)
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(value: true, onChanged: (bool? value) {}),
                                            const Text('Additional Line 1'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 2'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 3'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Checkbox(value: false, onChanged: (bool? value) {}),
                                            const Text('Additional Line 4'),
                                          ],
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 35, 113, 176),
                                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 77.0),
                                ),
                                child: const Text(
                                  'START LEARNING',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : _selectedIndex == 1
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('16668 Projects',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Image.asset('assets/devops.png'),
                                      const SizedBox(width: 5),
                                      Image.asset('assets/advance.png'),
                                      const SizedBox(width: 5),
                                      Image.asset('assets/rectangle1.png'),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 39, 116, 179),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text('Project Description',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                const Text(
                                    'Lorem ipsum dolor sit amet consectetur. Lectus viverra sed aliquam quis enim leo. Turpis nec facilisis placerat dolor ac donec. Odio semper quis rutrum quis lacus odio vivamus ultricies. Ultrices ultricies platea feugiat ac velit nulla. Proin lectus commodo id nullam ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    )),
                                const SizedBox(height: 25),
                                const Text('Related Courses',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(height: 20),
                                Container(
                                  color: const Color(0xffE4EFF7),
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "assets/python.png",
                                            width: 90,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Python',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Lorem ipsum dolor sit amet co.',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  color: const Color(0xffE4EFF7),
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "assets/flutter.png",
                                            width: 90,
                                            height: 50,
                                          ),
                                          const SizedBox(width: 10),
                                          const Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ruby',
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Lorem ipsum dolor sit amet co.',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(255, 35, 113, 176),
                                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 77.0),
                                    ),
                                    child: const Text(
                                      'START LEARNING',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('1223 Comments',
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 15),
                                    Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 18,
                                                foregroundImage: AssetImage("assets/profilephoto.png"),
                                              ),
                                              SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Moeed Hussain',
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    'Student',
                                                    style: TextStyle(fontSize: 14, color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'This is the description of the comment. It can span multiple lines and will be displayed below the user information.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  IconButton(
                                                    icon: const Icon(Icons.favorite_border),
                                                    onPressed: () {},
                                                  ),
                                                  const Text(
                                                    '1',
                                                    style: TextStyle(fontSize: 16),
                                                  ),
                                                  IconButton(
                                                    icon: const Icon(Icons.comment),
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                '1  week ago',
                                                style: TextStyle(fontSize: 14, color: Colors.blue),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 15),
                                    Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 18,
                                                foregroundImage: AssetImage("assets/profilephoto.png"),
                                              ),
                                              SizedBox(width: 10),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Maryam Sardar',
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    'Student',
                                                    style: TextStyle(fontSize: 14, color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            'This is the description of the comment. It can span multiple lines and will be displayed below the user information.',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          const SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  IconButton(
                                                    icon: const Icon(Icons.favorite_border),
                                                    onPressed: () {},
                                                  ),
                                                  IconButton(
                                                    icon: const Icon(Icons.comment),
                                                    onPressed: () {},
                                                  ),
                                                  const Text(
                                                    '1',
                                                    style: TextStyle(fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                              const Text(
                                                '1  Days ago',
                                                style: TextStyle(fontSize: 14, color: Colors.blue),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'View All',
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 39, 116, 179),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text('Related Courses',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    const SizedBox(height: 20),
                                    Container(
                                      color: const Color(0xffE4EFF7),
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "assets/python.png",
                                                width: 90,
                                                height: 50,
                                              ),
                                              const SizedBox(width: 10),
                                              const Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Python',
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    'Lorem ipsum dolor sit amet co.',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black54,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      color: const Color(0xffE4EFF7),
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "assets/flutter.png",
                                                width: 90,
                                                height: 50,
                                              ),
                                              const SizedBox(width: 10),
                                              const Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Ruby',
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    'Lorem ipsum dolor sit amet co.',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black54,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Center(
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(255, 35, 113, 176),
                                          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 77.0),
                                        ),
                                        child: const Text(
                                          'START LEARNING',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabButton(int index, String text) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onTabSelected(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromARGB(255, 39, 116, 179) : Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

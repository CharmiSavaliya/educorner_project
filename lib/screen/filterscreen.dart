import 'package:educorner_project/screen/homescreen.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isBeginnerSelected = false;
  bool isIntermediateSelected = false;
  bool isExpertSelected = false;
  bool isPaidSelected = false;
  bool isFreeSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(const HomeScreen());
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Filter',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(width: 210),
                const Text(
                  'Clear',
                  style: TextStyle(color: Color(0xFF0E74BC), fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '   Levels:',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      ListTile(
                        leading: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: isBeginnerSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                isBeginnerSelected = value ?? false;
                              });
                            },
                          ),
                        ),
                        title: const Text(
                          'Beginners',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: isIntermediateSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                isIntermediateSelected = value ?? false;
                              });
                            },
                          ),
                        ),
                        title: const Text(
                          'Intermediate',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: isExpertSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                isExpertSelected = value ?? false;
                              });
                            },
                          ),
                        ),
                        title: const Text(
                          'Expert',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '   Price:',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      ListTile(
                        leading: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: isPaidSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                isPaidSelected = value ?? false;
                              });
                            },
                          ),
                        ),
                        title: const Text(
                          'Paid',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ListTile(
                        leading: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: isFreeSelected,
                            onChanged: (bool? value) {
                              setState(() {
                                isFreeSelected = value ?? false;
                              });
                            },
                          ),
                        ),
                        title: const Text(
                          'Free',
                          style: TextStyle(fontSize: 20),
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
    );
  }
}

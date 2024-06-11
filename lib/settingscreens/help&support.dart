import 'package:educorner_project/Settingscreens/settingscreen.dart';
import 'package:flutter/material.dart';

class HelpSupportScreen extends StatefulWidget {
  const HelpSupportScreen({super.key});

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(const SettingScreen());
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Help & Support',
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Your Name',
                            filled: true,
                            fillColor: Colors.lightBlue.shade50,
                            border: const OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Your Email',
                            filled: true,
                            fillColor: Colors.lightBlue.shade50,
                            border: const OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _descriptionController,
                          decoration: InputDecoration(
                            labelText: 'Describe Your Problem.... ',
                            alignLabelWithHint: true,
                            filled: true,
                            fillColor: Colors.lightBlue.shade50,
                            border: const OutlineInputBorder(),
                          ),
                          minLines: 25,
                          maxLines: 30,
                          keyboardType: TextInputType.multiline,
                        ),
                        const SizedBox(height: 16),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     String name = _nameController.text;
                        //     String email = _emailController.text;
                        //     String description = _descriptionController.text;

                        //     print('Name: $name');
                        //     print('Email: $email');
                        //     print('Description: $description');
                        //   },
                        //   child: Text('Submit'),
                        // ),
                      ],
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

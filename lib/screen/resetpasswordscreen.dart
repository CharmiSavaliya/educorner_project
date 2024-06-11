import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Reset Password',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lorem ipsum dolor sit amet a \n             aconsectetur',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            TextField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color.fromARGB(255, 242, 249, 255),
                  filled: true,
                  hintText: 'Password',
                  suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            const SizedBox(height: 20),
            TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: const Color.fromARGB(255, 242, 249, 255),
                  filled: true,
                  hintText: 'Confirm Password',
                  suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: 400,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 35, 113, 176),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color.fromARGB(255, 39, 116, 179),
                    width: 1.0,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "SAVE CHANGES",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

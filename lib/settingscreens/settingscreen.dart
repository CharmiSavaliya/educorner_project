import 'package:educorner_project/Settingscreens/mycertificate.dart';
import 'package:educorner_project/Settingscreens/mydownload.dart';
import 'package:educorner_project/Settingscreens/myproject.dart';
import 'package:educorner_project/screen/editprofile.dart';
import 'package:educorner_project/screen/homescreen.dart';
import 'package:educorner_project/settingscreens/help&support.dart';
import 'package:educorner_project/settingscreens/privacypolicy.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 65,
                      width: 375,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 243, 251),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  foregroundImage: AssetImage("assets/profilephoto.png"),
                                ),
                                SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sara Rehman",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "sara123@gmail.com",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
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
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48,
                      width: 375,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfileScreen(),
                          ),
                        ),
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
                          child: Center(
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditProfileScreen(),
                                ),
                              ),
                              child: const Text(
                                "EDIT PROFILE",
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
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.collections_bookmark,
                            ),
                          ),
                        ),
                        title: const Text(
                          'All Saved Courses',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.badge_sharp,
                            ),
                          ),
                        ),
                        title: const Text(
                          'My Certificates',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyCertificateScreen(),
                              ),
                            );
                          },
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyCertificateScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.pause_presentation,
                            ),
                          ),
                        ),
                        title: const Text(
                          'My Project',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyProjectScreen(),
                              ),
                            );
                          },
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyProjectScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.payments_outlined,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Payment Methods',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.headphones,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Help & Support',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HelpSupportScreen(),
                              ),
                            );
                          },
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.privacy_tip_outlined,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Privacy Policy',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PrivacyPolicyScreen(),
                              ),
                            );
                          },
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PrivacyPolicyScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.download_for_offline_outlined,
                            ),
                          ),
                        ),
                        title: const Text(
                          'My Downloads',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyDownloadScreen(),
                              ),
                            );
                          },
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyDownloadScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 65,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 243, 251),
                  ),
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 129, 186, 233),
                              width: 3,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromARGB(255, 201, 221, 234),
                            child: Icon(
                              Icons.logout_rounded,
                            ),
                          ),
                        ),
                        title: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 200,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Logout',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Are you sure you want to logout?',
                                        style: TextStyle(fontSize: 18, color: Colors.grey),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 50,
                                            width: 150,
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
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: InkWell(
                                                  onTap: () => Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => const SettingScreen(),
                                                    ),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "Cancel",
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
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          SizedBox(
                                            height: 50,
                                            width: 150,
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
                                                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "Logout",
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
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

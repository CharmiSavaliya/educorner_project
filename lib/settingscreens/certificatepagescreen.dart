import 'package:flutter/material.dart';

class CertificatePageScreen extends StatefulWidget {
  const CertificatePageScreen({super.key});

  @override
  State<CertificatePageScreen> createState() => _CertificatePageScreenState();
}

class _CertificatePageScreenState extends State<CertificatePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  'Advanced SEO',
                  style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Certificate',
                  style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Divider(
                  thickness: 5,
                  color: Colors.blue,
                  indent: 140,
                  endIndent: 140,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sara Rehman',
                        style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Tincidunt tincidunt et dignissim nullam sit elit urna. Neque id lacinia eu imperdiet turpis neque. Magna et enim aenean nisl dignissim enim malesuada justo. At pharetra elit lectus vitae sapien enim magna enim leo.',
                        style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/sign.png'),
                              SizedBox(height: 20),
                              Text(
                                'Umair Taseer',
                                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Instructor',
                                style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset('assets/badge2.png'),
                                  Text(
                                    'EduCorner',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Edu Corner',
                                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Course App',
                                style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: Text(
                          'Download Now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
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

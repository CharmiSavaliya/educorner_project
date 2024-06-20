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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Advanced SEO',
                style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Certificate',
                style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 5,
                color: Colors.blue,
                indent: 140,
                endIndent: 140,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sara Rehman',
                      style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Lorem ipsum dolor sit amet consectetur. Tincidunt tincidunt et dignissim nullam sit elit urna. Neque id lacinia eu imperdiet turpis neque. Magna et enim aenean nisl dignissim enim malesuada justo. At pharetra elit lectus vitae sapien enim magna enim leo.',
                      style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/sign.png'),
                            const SizedBox(height: 20),
                            const Text(
                              'Umair Taseer',
                              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Instructor',
                              style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset('assets/badge2.png'),
                                const Text(
                                  'EduCorner',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Edu Corner',
                              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Course App',
                              style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Center(
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
    );
  }
}

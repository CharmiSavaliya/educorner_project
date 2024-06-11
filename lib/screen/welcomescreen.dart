import 'package:educorner_project/screen/login_screen.dart';
import 'package:educorner_project/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                Screen1(),
                Screen2(),
                Screen3(),
                Screen4(),
                Screen5(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: 5,
            effect: const WormEffect(
              dotWidth: 10.0,
              dotHeight: 10.0,
              spacing: 16.0,
              dotColor: Colors.grey,
              activeDotColor: Colors.blue,
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/Screen1.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Explore LimitLess \n Learning',
                style: TextStyle(
                    color: Color.fromARGB(255, 28, 121, 198), fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 113, 176),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2(),
                        )),
                    child: const Center(
                      child: Text(
                        " NEXT",
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
            ],
          ),
        ),
        Positioned(
          right: 5,
          top: 30,
          child: Container(
            height: 45,
            width: 65,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 35, 113, 176),
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen5(),
                  )),
              child: const Center(
                child: Text(
                  " skip",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Image.asset('assets/Screen2.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Set The Stage For \n        Success',
                style: TextStyle(
                    color: Color.fromARGB(255, 28, 121, 198), fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          color: const Color.fromARGB(255, 39, 116, 179),
                          width: 1.0,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen1(),
                            )),
                        child: const Center(
                          child: Text(
                            "BACK",
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
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 113, 176),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen3(),
                            )),
                        child: const Center(
                          child: Text(
                            " NEXT",
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
                ],
              )
            ]),
          ),
          Positioned(
            right: 5,
            top: 30,
            child: Container(
              height: 45,
              width: 65,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 35, 113, 176),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen5(),
                    )),
                child: const Center(
                  child: Text(
                    " skip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Image.asset('assets/Screen3.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Dive Into Educational \n         Experience',
                style: TextStyle(
                    color: Color.fromARGB(255, 28, 121, 198), fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          color: const Color.fromARGB(255, 39, 116, 179),
                          width: 1.0,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen2(),
                            )),
                        child: const Center(
                          child: Text(
                            "BACK",
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
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 113, 176),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen4(),
                            )),
                        child: const Center(
                          child: Text(
                            " NEXT",
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
                ],
              )
            ]),
          ),
          Positioned(
            right: 5,
            top: 30,
            child: Container(
              height: 45,
              width: 65,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 35, 113, 176),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen5(),
                    )),
                child: const Center(
                  child: Text(
                    " skip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Image.asset('assets/Screen4.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Start Your Academic \n          Journey ',
                style: TextStyle(
                    color: Color.fromARGB(255, 28, 121, 198), fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          color: const Color.fromARGB(255, 39, 116, 179),
                          width: 1.0,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen3(),
                            )),
                        child: const Center(
                          child: Text(
                            "BACK",
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
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 113, 176),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen5(),
                            )),
                        child: const Center(
                          child: Text(
                            " NEXT",
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
                ],
              )
            ]),
          ),
          Positioned(
            right: 5,
            top: 30,
            child: Container(
              height: 45,
              width: 65,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 35, 113, 176),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen5(),
                    )),
                child: const Center(
                  child: Text(
                    " skip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Image.asset('assets/Screen5.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Engage Deeply With \n        Edu Corner ',
            style: TextStyle(color: Color.fromARGB(255, 28, 121, 198), fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              '     Lorem ipsum dolor sit amet a \nConsectetur. Ut proin accumsan be \n           tincidunt ultricies leo.'),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 350,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 113, 176),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: const Color.fromARGB(255, 39, 116, 179),
                      width: 1.0,
                    ),
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen3(),
                        )),
                    child: const Center(
                      child: Text(
                        "EXPLORE COURSES",
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: const Color.fromARGB(255, 39, 116, 179),
                      width: 1.0,
                    ),
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        )),
                    child: const Center(
                      child: Text(
                        "SIGN UP",
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
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInScreen(),
                        )),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color.fromARGB(255, 39, 116, 179), fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}

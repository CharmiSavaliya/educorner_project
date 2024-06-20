import 'package:educorner_project/education.model/educationmodel.dart';
import 'package:educorner_project/screen/login_screen.dart';
import 'package:educorner_project/screen/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  final int startIndex;
  const WelcomeScreen({Key? key, required this.startIndex}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late PageController _pageController;
  late int _currentPageIndex;
  int _selectedNextButtonIndex = -1;
  int _selectedBackButtonIndex = -1;

  @override
  void initState() {
    super.initState();
    _currentPageIndex = widget.startIndex;
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
      _selectedNextButtonIndex = -1;
      _selectedBackButtonIndex = -1;
    });
  }

  void _goToNextPage() {
    if (_currentPageIndex < educationAll.length - 1) {
      setState(() {
        _selectedNextButtonIndex = _currentPageIndex;
      });
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPreviousPage() {
    if (_currentPageIndex > 0) {
      setState(() {
        _selectedBackButtonIndex = _currentPageIndex;
      });
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _skip() {
    setState(() {
      _currentPageIndex = 0;
    });
    _pageController.jumpToPage(4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: educationAll.length,
                    onPageChanged: onPageChanged,
                    itemBuilder: (context, index) {
                      return _buildPageItem(index);
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                _buildPageIndicator(),
                const SizedBox(height: 16.0),
              ],
            ),
            Positioned(
              right: 5,
              top: 30,
              child: GestureDetector(
                onTap: _skip,
                child: Container(
                  height: 45,
                  width: 65,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: const Color.fromARGB(255, 35, 113, 176),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: const Center(
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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

  Widget _buildPageItem(int index) {
    EducationModel screen = educationAll[index];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Image.asset(screen.image),
        const SizedBox(height: 30.0),
        Text(
          screen.title,
          style: const TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 35, 113, 176),
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          screen.discription,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20.0),
        if (index == 4) _buildLoginPageContent(),
        if (index == 0)
          ElevatedButton(
            onPressed: _goToNextPage,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 35, 113, 176),
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              minimumSize: const Size(220, 30),
            ),
            child: const Text('NEXT', style: TextStyle(fontSize: 19)),
          ),
        if (index > 0 && index != 4)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedBackButtonIndex = index;
                    _selectedNextButtonIndex = -1;
                  });
                  _goToPreviousPage();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedBackButtonIndex == index ? const Color.fromARGB(255, 35, 113, 176) : Colors.white,
                  side: const BorderSide(
                    color: Color.fromARGB(255, 35, 113, 176),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                  minimumSize: const Size(180, 40),
                ),
                child: Text(
                  'Back',
                  style: TextStyle(
                    fontSize: 20,
                    color: _selectedBackButtonIndex == index ? Colors.white : const Color.fromARGB(255, 35, 113, 176),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedNextButtonIndex = index;
                    _selectedBackButtonIndex = -1;
                  });
                  _goToNextPage();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 35, 113, 176),
                  side: BorderSide(
                    color: _selectedNextButtonIndex == index ? const Color.fromARGB(255, 35, 113, 176) : Colors.blue,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0), // Adjust padding
                  minimumSize: const Size(180, 40),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(educationAll.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          height: 11.0,
          width: _currentPageIndex == index ? 12.0 : 12.0,
          decoration: BoxDecoration(
            color: _currentPageIndex == index ? const Color.fromARGB(255, 35, 113, 176) : Colors.grey,
            borderRadius: BorderRadius.circular(6.0),
          ),
        );
      }),
    );
  }

  Widget _buildLoginPageContent() {
    return Column(
      children: [
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedNextButtonIndex = 0;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 35, 113, 176),
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 77.0),
          ),
          child: const Text(
            'EXPLORE COURSES',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selectedNextButtonIndex = 1;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 128.0),
          ),
          child: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                )),
            child: const Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: 'Login',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 113, 176),
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogInScreen(),
                      )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

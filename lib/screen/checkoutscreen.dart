import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int selectedIndex = 0;
  String detailsData = '';
  String paymentModeData = '';
  String confirmationData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Check Out")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topbar(context: context),
                const SizedBox(height: 20),
                detail(),
                const SizedBox(height: 30),
                displayData(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topbar({required BuildContext context}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
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
                    'Checkout',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }

  Widget detail() {
    return Column(
      children: [
        Container(
          height: 150,
          width: 500,
          decoration: BoxDecoration(
            color: const Color(0xffE4EFF7),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCircleAvatar(0, '1'),
                  buildDivider(90),
                  buildCircleAvatar(1, '2'),
                  buildDivider(90),
                  buildCircleAvatar(2, '3'),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Details'),
                  SizedBox(width: 5),
                  Text('Payment Mode'),
                  SizedBox(width: 5),
                  Text('Confirmation'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCircleAvatar(int index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          switch (index) {
            case 0:
              detailsData = 'Details data';
              paymentModeData = '';
              confirmationData = '';
              break;
            case 1:
              detailsData = '';
              paymentModeData = 'Payment mode data';
              confirmationData = '';
              break;
            case 2:
              detailsData = '';
              paymentModeData = '';
              confirmationData = 'Confirmation data';
              break;
            default:
              break;
          }
        });
      },
      child: CircleAvatar(
        backgroundColor: index == selectedIndex ? Colors.blue : Colors.grey,
        radius: 25,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: const Color(0xffE4EFF7),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDivider(double width) {
    return SizedBox(
      width: width,
      child: Container(
        height: 3,
        color: Colors.grey,
      ),
    );
  }

  Widget displayData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (detailsData.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/rectangle1.png",
                              width: 90,
                              height: 50,
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Digital Marketing',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text(
                                      'By Alexa Cary',
                                      style: TextStyle(fontSize: 16, color: Colors.black54),
                                    ),
                                    SizedBox(width: 100),
                                    Text(
                                      '\$299',
                                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFFFAF0C),
                                      size: 18,
                                    ),
                                    Text(
                                      '4.8',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '(1.8k Learners)',
                                      style: TextStyle(fontSize: 16, color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    "Apply Discount",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(width: 140),
                  Container(
                    height: 42,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 39, 116, 179),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    child: const Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                children: [
                  Text(
                    'Price before discount',
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  SizedBox(width: 170),
                  Text(
                    "\$299",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    '20% discount',
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  SizedBox(width: 230),
                  Text(
                    "\$59",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Price After discount',
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  SizedBox(width: 180),
                  Text(
                    "\$249",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Final Price',
                    style: TextStyle(fontSize: 17, color: Color.fromARGB(255, 39, 116, 179)),
                  ),
                  SizedBox(width: 250),
                  Text(
                    "\$249",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 113, 176),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            "PAY NOW   \$240",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
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
        if (paymentModeData.isNotEmpty)
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 42,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 238, 237, 237),
                      borderRadius: BorderRadius.circular(42),
                    ),
                    child: const Center(
                      child: Text(
                        "Saved Card",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 140),
                  const Text(
                    "Add New",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 39, 116, 179),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 39, 116, 179),
                    ),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/visa.png',
                  ),
                  Text(
                    "Other ways to Pay",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Color(0xffE4EFF7),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/pp.png',
                          fit: BoxFit.contain, // Adjust this based on your image and container size
                          width: 50, // Adjust the width as necessary
                          height: 50, // Adjust the height as necessary
                        ),
                        SizedBox(width: 10), // Add spacing between the image and text
                        Text(
                          "Credit/Debit Card",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        if (confirmationData.isNotEmpty)
          Center(
            child: Column(
              children: [
                Image.asset('assets/confirme.png'),
                const Text(
                  "Congratulations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'You have purchased a new course.\n        You can start learning now',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                const SizedBox(height: 80),
                Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 113, 176),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(05),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: const Center(
                      child: Text(
                        "OPEN COURSE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}

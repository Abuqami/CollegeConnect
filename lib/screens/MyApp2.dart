import 'package:collegeconnect/screens/MyApp3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/widgets/container.dart';

import 'landing_page.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home2(),
    );
  }
}

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          GestureDetector(
            onTap: () {
              Get.to(landingpage());
            },
            child: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                'Images/Sec.png',
              )),
          const SizedBox(
            height: 110,
          ),
          Positioned(
            child: Text(
              "Enter Your Personal Information 2-2",
              style: GoogleFonts.quicksand(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
                hintText: 'Ex. MohAlboqami'),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
                hintText: 'Ex. Mohammed'),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
                hintText: 'Ex. Albaqami'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: FractionalOffset.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 135,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF199D8C),
                    ),
                    padding: const EdgeInsets.all(8),
                    // Change button text when light changes state.
                    child: const Text(
                      'Back',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 17),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(MyApp3());
                  },
                  child: Container(
                    width: 135,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF9DDAC),
                    ),
                    padding: const EdgeInsets.all(8),
                    // Change button text when light changes state.
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

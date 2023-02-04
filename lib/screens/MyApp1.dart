import 'package:collegeconnect/screens/MyApp2.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/widgets/container.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home1(),
    );
  }
}

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(2.0),
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
                    'Images/first.png',
                  )),
              isAndoridsmall
                  ? SizedBox(
                      height: 110,
                    )
                  : SizedBox(height: 60),
              Positioned(
                child: Text(
                  "Enter Your Personal Information 1-2",
                  style: GoogleFonts.quicksand(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(fontSize: 15),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Example@iau.edu.sa'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: '•••••••••••••••••••••'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    hintText: '•••••••••••••••••••••'),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: FractionalOffset.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Get.to(MyApp2());
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

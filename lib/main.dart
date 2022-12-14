import 'package:collegeconnect/screens/Forgot_Password.dart';
import 'package:collegeconnect/screens/Login.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CollegeConnect());
}

class CollegeConnect extends StatelessWidget {
  const CollegeConnect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: landingpage(),
      ),
    );
  }
}

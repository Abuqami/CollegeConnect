import 'package:collegeconnect/screens/Educational_Resources.dart';

import 'package:collegeconnect/screens/Forgot_Password.dart';
import 'package:collegeconnect/screens/Login.dart';
import 'package:collegeconnect/screens/ManageCoordinators.dart';
import 'package:collegeconnect/screens/Navigate%20Majors.dart';

import 'package:collegeconnect/screens/Test.dart';
import 'package:collegeconnect/screens/User_Issues.dart';
import 'package:collegeconnect/screens/admin_dashboard.dart';
import 'package:collegeconnect/screens/dropdown.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:collegeconnect/screens/textflex.dart';
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
        child: AdminDashboard(),
      ),
    );
  }
}

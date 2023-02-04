import 'package:collegeconnect/screens/Login.dart';
import 'package:collegeconnect/screens/MyPosts.dart';
import 'package:collegeconnect/screens/Mymaterials.dart';
import 'package:collegeconnect/screens/Mymaterials_Alt.dart';
import 'package:collegeconnect/screens/Preference.dart';
import 'package:collegeconnect/screens/Test.dart';
import 'package:collegeconnect/screens/admin_dashboard.dart';
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

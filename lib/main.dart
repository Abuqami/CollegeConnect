

import 'package:collegeconnect/screens/Test.dart';


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
        child: Test(

        ),
      ),
    );
  }
}

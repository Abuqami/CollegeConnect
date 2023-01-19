import 'package:collegeconnect/screens/Educational_Resources.dart';
import 'package:collegeconnect/screens/admin_dashboard.dart';
import 'package:collegeconnect/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:collegeconnect/screens/ManageCoordinators.dart';
import 'package:get/get.dart';
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(landingpage());
                    },
                    child: Container(
                      width: 169,
                      height: 93,
                      decoration: BoxDecoration(
                          color: Color(0xFFF9DDAC),
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Module 1",
                            style: TextStyle(
                              fontSize: 22
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(AdminDashboard());
                    },
                    child: Container(
                      width: 169,
                      height: 93,
                      decoration: BoxDecoration(
                          color: Color(0xFFF9DDAC),
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Module 2",
                            style: TextStyle(
                              fontSize: 22
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 45,),
                  GestureDetector(
                    onTap: (){
                      Get.to(Educational_Resources());
                    },
                    child: Container(
                      width: 169,
                      height: 93,
                      decoration: BoxDecoration(
                          color: Color(0xFFF9DDAC),
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Module 3",
                            style: TextStyle(
                                fontSize: 22
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}

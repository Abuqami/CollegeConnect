import 'package:collegeconnect/screens/ManageCoordinators.dart';
import 'package:collegeconnect/screens/User_Issues.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 90,
              left: 60,
              right: 60,
              bottom: 50,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Admin Dashboard",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.snackbar("", "",
                            snackPosition: SnackPosition.BOTTOM,
                            titleText: Text(
                              "Sign out",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            messageText: Text("😔 وين رايح التفت سلم علينا"),
                            margin: EdgeInsets.all(10));
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: FaIcon(
                          FontAwesomeIcons.powerOff,
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.user,
                            size: 35,
                          ),
                          Text(
                            "Mohammed Albaqami",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("@Mohammed"),
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(ManageCoordinator());
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
                                  FaIcon(
                                    FontAwesomeIcons.users,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("Activities Coordinators"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(() => UserIssues());
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
                                  FaIcon(FontAwesomeIcons.question),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("User Issues"),
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
            ),
          ),
        ],
      ),
    );
  }
}

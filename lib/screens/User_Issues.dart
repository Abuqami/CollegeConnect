import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'admin_dashboard.dart';

class UserIssues extends StatelessWidget {
  const UserIssues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9DDAC),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Get.to(() => AdminDashboard());
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: FaIcon(FontAwesomeIcons.arrowLeft),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 90,
                left: 60,
                right: 60,
                bottom: 50,
              ),
              child: Center(
                child: Text(
                  "User Issues",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      //to not having a limit within screen
                      child: Center(
                        child: SingleChildScrollView(
                          //responsible for making widgets scrollable
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                              UserIssue_information(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserIssue_information extends StatelessWidget {
  const UserIssue_information({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 282,
      height: 115,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF9DDAC),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.minimize),
            ),
            Flexible(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Flexible(
                      child: Text(
                        "2180000434@iau.edu.sa ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text("21/02/1999"),
                    Flexible(
                      child: Text(
                        'i have an issue regarding',
                        style: TextStyle(fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}

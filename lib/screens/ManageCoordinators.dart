import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ManageCoordinator extends StatelessWidget {
  const ManageCoordinator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF199D8C),
        onPressed: () {},
        child: FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0xFFF9DDAC),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FaIcon(FontAwesomeIcons.arrowLeft),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 60,
                  right: 60,
                  bottom: 50,
                ),
                child: Text(
                  "Manage Coordinators",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
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
                      bottomRight: Radius.circular(100000000),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 300,
                        height: 300,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Coordinators(
                                kcoordinator_Name: "Mohammed",
                                kcoordinator_UserName: "Mohammed",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Saad Albaqami",
                                kcoordinator_UserName: "Saad",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "khaled Ali",
                                kcoordinator_UserName: "khaled",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_Name: "Abdulrahman",
                                kcoordinator_UserName: "Abuqami",
                              ),
                            ],
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
      ),
    );
  }
}

class Coordinators extends StatelessWidget {
  Coordinators(
      {this.kcoordinator_Name,
      this.kcoordinator_UserName,
      this.KeducationalResourceIcon});
  final IconData? KeducationalResourceIcon;
  final String? kcoordinator_Name;
  final String? kcoordinator_UserName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 282,
      height: 44,
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: Color(0xFF199D8C),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.user),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text("$kcoordinator_Name"),
                      ),
                      Flexible(
                        child: Text("@$kcoordinator_UserName"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FaIcon(
                FontAwesomeIcons.pen,
                size: 18,
              ),
              SizedBox(
                width: 20,
              ),
              FaIcon(
                FontAwesomeIcons.minus,
                size: 18,
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}

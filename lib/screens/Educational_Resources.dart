import 'package:collegeconnect/screens/Test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:collegeconnect/screens/ManageCoordinators.dart';

var Hello = [1,2,3,4,5];

class Educational_Resources extends StatefulWidget {
  const Educational_Resources({Key? key}) : super(key: key);

  @override
  State<Educational_Resources> createState() => _Educational_ResourcesState();
}

class _Educational_ResourcesState extends State<Educational_Resources> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF199D8C),
        onPressed: () {},
        child: FaIcon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
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
                  child: GestureDetector(
                    onTap: () {
                      Get.to(Test());
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: FaIcon(FontAwesomeIcons.arrowLeft),
                    ),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 60, left: 60, right: 60, bottom: 50),
                child: Text(
                  "Educational Resources",
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
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(100000000),

                    ),
                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 65,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [



                          Container(
                            height: 44,
                            width: 131,
                            decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Select Level",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.arrowDown,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 44,
                            width: 131,
                            decoration: BoxDecoration(
                              color: Color(0xFFF9DDAC),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Select Course",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.arrowDown,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 45,),

                      Container(
                        width: 300,
                        height: 300,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Coordinators(
                                kcoordinator_UserName: 'Mohammed',
                                kcoordinator_Name: 'Mohammed',
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



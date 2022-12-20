import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/landingPageButtons.dart';

void main() {
  runApp(mymats());
}

class mymats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF9DDAC),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  SizedBox(
                    width: 330,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.more_horiz,
                        size: 30,
                      )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "My Materials",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 0,
                  left: 60,
                  right: 60,
                  bottom: 50,
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
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'Images/Button1.png',
                          width: 130,
                          height: 130,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'Images/Button2.png',
                          width: 130,
                          height: 130,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'Images/Button4.png',
                          width: 130,
                          height: 130,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'Images/Button3.png',
                          width: 128,
                          height: 130,
                        ),
                      ),
                    ]),
                    width: 392,
                    height: 150,
                    color: Colors.white,
                  )
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

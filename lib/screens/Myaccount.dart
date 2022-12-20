import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/landingPageButtons.dart';

void main() {
  runApp(myacc());
}

class myacc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xFFF9DDAC),
          height: 60,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_outlined),
              label: '.',
            ),
            NavigationDestination(
              icon: Icon(Icons.reduce_capacity_rounded),
              selectedIcon: Icon(Icons.reduce_capacity_rounded),
              label: '.',
            ),
            NavigationDestination(
              icon: Icon(Icons.menu_book_rounded),
              selectedIcon: Icon(Icons.menu_book_rounded),
              label: '.',
            ),
            NavigationDestination(
              icon: Icon(Icons.group_outlined),
              selectedIcon: Icon(Icons.group_outlined),
              label: '.',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              selectedIcon: Icon(Icons.sd_card_alert),
              label: '.',
            )
          ],
        ),
        backgroundColor: Color(0xFFF9DDAC),
        body: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "My account",
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
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(children: [
                Row(children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'Images/Bell.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(width: 320),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'Images/Power.png',
                      width: 30,
                      height: 30,
                    ),
                  )
                ]),
                Image.asset(
                  'Images/Profile.png',
                  width: 60,
                  height: 60,
                ),
                Text("Mohammed Ali"),
                Text("@Mohammed"),
              ]),
              width: 400,
              height: 150,
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'Images/Button5.png',
                        width: 130,
                        height: 130,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'Images/Button6.png',
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
                        'Images/Button7.png',
                        width: 130,
                        height: 130,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'Images/Button8.png',
                        width: 130,
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
              height: 50,
              decoration: BoxDecoration(color: Colors.white),
            )
          ]),
        ));
  }
}

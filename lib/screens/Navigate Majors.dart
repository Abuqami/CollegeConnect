import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigateMajors extends StatelessWidget {
  const NavigateMajors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(),
        backgroundColor: Color(0xFFF9DDAC),
      body: SafeArea(
        child: Column(
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
                      "Navigate Majors",
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
                  padding: const EdgeInsets.all(45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Major(img: "Images/CIS.png", MajorName: "CIS",),
                          Major(img: "Images/AImajor.png", MajorName: "AI",),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Major(img: "Images/CYSmajor.png", MajorName: "CYS"),
                          Major(img: "Images/CSmajor.png", MajorName: "CS",),
                        ],
                      )
                    ],
                  ),
                ),
                ),
              ),

          ],
          ),
        )
      );
  }
}

class Major extends StatelessWidget {
  Major({this.img, this.MajorName});

final String? img;
final String? MajorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102,
      height: 96,
      decoration: BoxDecoration(
          color: Color(0xFFF9DDAC),
          borderRadius: BorderRadius.circular(22)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("$img"), width: 45, height: 45,),
          SizedBox(height: 8,),
          Text("$MajorName", style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Color(0xFFF9DDAC),
      height: 50,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home_outlined),
          label: 'ㅤ',
        ),
        NavigationDestination(
          icon: Icon(Icons.reduce_capacity_rounded),
          selectedIcon: Icon(Icons.reduce_capacity_rounded),
          label: 'ㅤ',
        ),
        NavigationDestination(
          icon: Icon(Icons.menu_book_rounded),
          selectedIcon: Icon(Icons.menu_book_rounded),
          label: 'ㅤ',
        ),
        NavigationDestination(
          icon: Icon(Icons.group_outlined),
          selectedIcon: Icon(Icons.group_outlined),
          label: 'ㅤ',
        ),
        NavigationDestination(
          icon: Icon(Icons.person),
          selectedIcon: Icon(Icons.sd_card_alert),
          label: 'ㅤ',
        )
      ],
    );
  }
}

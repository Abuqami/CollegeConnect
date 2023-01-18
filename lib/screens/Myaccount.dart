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
    return GetMaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    final isPixel3 = MediaQuery.of(context).size.height > 736;

    return Scaffold(
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xFFF9DDAC),
          height: 60,
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
                child: isPixel3
                    ? UpperPart()
                    : isAndoridsmall
                        ? UpperPart()
                        : UpperPartsmall()),
            Expanded(
              flex: 6,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: isPixel3
                      ? RowUp()
                      : isAndoridsmall
                          ? RowUp()
                          : RowUpSmall()),
            ),
            Row(
              children: [
                isPixel3
                    ? Bottom()
                    : isAndoridsmall
                        ? Bottom()
                        : BottomSmall()
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

class RowUp extends StatelessWidget {
  const RowUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          width: 90,
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
    );
  }
}

class RowUpSmall extends StatelessWidget {
  const RowUpSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          width: 110,
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
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          width: 90,
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
    );
  }
}

class BottomSmall extends StatelessWidget {
  const BottomSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          width: 110,
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
      width: 410,
      height: 150,
      color: Colors.white,
    );
  }
}

class UpperPart extends StatelessWidget {
  const UpperPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
    ]);
  }
}

class UpperPartsmall extends StatelessWidget {
  const UpperPartsmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'Images/Bell.png',
            width: 30,
            height: 30,
          ),
        ),
        SizedBox(width: 330),
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
    ]);
  }
}

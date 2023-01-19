import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/landingPageButtons.dart';

void main() {
  runApp(Community());
}

class Community extends StatelessWidget {
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
      bottomNavigationBar: Navbar(),
      backgroundColor: Color(0xFFF9DDAC),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Community",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ListView.builder(
                  itemCount: 10, itemBuilder: ((context, index) => Post())),
            ),
          ),
        ]),
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;
    final isPixel3 = MediaQuery.of(context).size.height > 736;
    return Row(
      children: [
        isPixel3
            ? Container(
                width: 10,
              )
            : isAndoridsmall
                ? Container(
                    width: 10,
                  )
                : Container(
                    width: 18,
                  ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromARGB(255, 167, 163, 163))),
          child: Column(children: [
            Container(
              child: Row(children: [
                Image.asset(
                  'Images/Blackprofile.png',
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Mohammed Ali"),
                SizedBox(
                  width: 5,
                ),
                Text("@moham123"),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "10M",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ]),
            ),
            Container(
              child: Row(children: [
                SizedBox(
                  width: 30,
                ),
                Flexible(
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur "))
              ]),
              width: 300,
              height: 50,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 210,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'Images/Heart.png',
                          width: 15,
                          height: 15,
                        ),
                      ),
                      Text("12"),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: ((context) => AlertDialog(
                                    scrollable: true,
                                    title: Text(
                                      " 1 Comment",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    backgroundColor: Color(0xFFF9DDAC),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    content: Stack(children: [
                                      Container(
                                        child: Row(children: [
                                          Image.asset(
                                            'Images/Blackprofile.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "@moham123",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ]),
                                      ),
                                    ]),
                                    actions: [
                                      Container(
                                          child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "This is an example of a post",
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        ],
                                      )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [Text("10M")],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                            width: 290,
                                            height: 1,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'Images/Blackprofile.png',
                                            width: 30,
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "@Saeed",
                                            style: TextStyle(fontSize: 14),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 30,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                              child: Text(
                                                  "This is a comment example"))
                                        ],
                                      ),
                                      Row(
                                        children: [Text("2H")],
                                      )
                                    ],
                                  )));
                        },
                        child: Image.asset(
                          'Images/Comment.png',
                          width: 15,
                          height: 15,
                        ),
                      ),
                      Text("1")
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
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
    );
  }
}

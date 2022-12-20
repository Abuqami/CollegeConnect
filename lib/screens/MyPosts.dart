import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:collegeconnect/widgets/landingPageButtons.dart';

void main() {
  runApp(Myposts());
}

class Myposts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9DDAC),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "My posts",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for a post ..."),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 25),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 100),
                        height: 160,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Color.fromARGB(255, 167, 163, 163))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    'Images/Blackprofile.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  Text("Mohammed Ali"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("@moham123"),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: ((context) => AlertDialog(
                                              content: Text(
                                                'Are you sure about deleting this post?',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              actions: [
                                                TextButton(
                                                    onPressed: (() {}),
                                                    child: Text(
                                                      'Cancel',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14),
                                                    )),
                                                TextButton(
                                                    onPressed: (() {}),
                                                    child: Text(
                                                      'Yes',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ))
                                              ],
                                              backgroundColor:
                                                  Color(0xFFF9DDAC),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)))));
                                    },
                                    child: Image.asset(
                                      'Images/Delete.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ]),
                                width: 300,
                                height: 50,
                              ),
                              Container(
                                child: Row(children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text("This is an example of a post"),
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
                                      child: Text("10H"),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'Images/Update.png',
                                        width: 200,
                                        height: 40,
                                      ),
                                    ),
                                    Container(
                                      child: Row(children: [
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
                                                builder: ((context) =>
                                                    AlertDialog(
                                                      title: Text(
                                                        " 1 Comment",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 14),
                                                      ),
                                                      backgroundColor:
                                                          Color(0xFFF9DDAC),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
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
                                                              style: TextStyle(
                                                                  fontSize: 14),
                                                            ),
                                                          ]),
                                                        ),
                                                      ]),
                                                      actions: [
                                                        Container(
                                                            child: Row(
                                                          children: [
                                                            Text(
                                                              "This is an example of a post",
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            )
                                                          ],
                                                        )),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("10H")
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: Colors
                                                                          .black),
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
                                                              style: TextStyle(
                                                                  fontSize: 14),
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
                                                            Text(
                                                                "This is a comment example")
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("2H")
                                                          ],
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
                      )
                    ]),
              )),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            height: 100,
            child: Row(
              children: [
                SizedBox(
                  width: 310,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                              content: Stack(
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Image.asset(
                                          'Images/Delete.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 220,
                                      ),
                                      GestureDetector(
                                        child: Image.asset(
                                          'Images/Message.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              title: (Text(
                                "Post",
                                textAlign: TextAlign.center,
                              )),
                              backgroundColor: Color(0xFFF9DDAC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              actions: [
                                Container(
                                  width: 310,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: TextField(
                                    onChanged: (value) {},
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Enter Descreption..."),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration:
                                          BoxDecoration(color: Colors.black),
                                      width: 290,
                                      height: 1,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'Images/Album.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'Images/Link.png',
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )));
                  },
                  child: Image.asset(
                    'Images/Add.png',
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
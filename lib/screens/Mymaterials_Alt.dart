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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(249, 221, 172, 1),
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
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 221, 172, 1),
                  borderRadius: BorderRadius.only(),
                ),
              ),
              isAndoridsmall
                  ? Container(
                      width: 400,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                    )
                  : isPixel3
                      ? Container(
                          width: 400,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        )
                      : isAndoridsmall
                          ? Container(
                              width: 420,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  )),
                            )
                          : Container(
                              width: 420,
                              height: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  )),
                            ),
              Container(
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              isPixel3
                  ? Container(
                      width: 400,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(),
                      ),
                      child: UpperRow(),
                    )
                  : isAndoridsmall
                      ? Container(
                          width: 400,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                          child: UpperRow(),
                        )
                      : Container(
                          width: 420,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                          child: UpperRow()),
              isPixel3
                  ? Container(
                      width: 400,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(),
                      ),
                    )
                  : isAndoridsmall
                      ? Container(
                          width: 400,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                        )
                      : Container(
                          width: 420,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                        ),
              isAndoridsmall
                  ? Container(
                      width: 400,
                      height: 183,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(),
                      ),
                    )
                  : isPixel3
                      ? Container(
                          width: 400,
                          height: 148.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(),
                          ),
                        )
                      : isAndoridsmall
                          ? Container(
                              width: 400,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                            )
                          : Container(
                              width: 420,
                              height: 124,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                            ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpperRow extends StatelessWidget {
  const UpperRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 45,
        ),
        Button1(),
        SizedBox(
          width: 40,
        ),
        Button2(),
        SizedBox(
          width: 45,
        ),
      ],
    );
  }
}

class UpperRowSmall extends StatelessWidget {
  const UpperRowSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Button1(),
        SizedBox(
          width: 108,
        ),
        Button2(),
      ],
    );
  }
}

class BottomRow extends StatelessWidget {
  const BottomRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(children: [
            SizedBox(
              width: 20,
            ),
            Button4(),
            SizedBox(
              width: 90,
            ),
            Button3(),
          ]),
          width: 390,
          height: 140,
          color: Colors.white,
        ),
      ],
    );
  }
}

class BottomRowSmall extends StatelessWidget {
  const BottomRowSmall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(children: [
            SizedBox(
              width: 20,
            ),
            Button4(),
            SizedBox(
              width: 112,
            ),
            Button3(),
          ]),
          width: 410,
          height: 140,
          color: Colors.white,
        ),
      ],
    );
  }
}

class Button3 extends StatelessWidget {
  const Button3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        'Images/Button3.png',
        width: 125,
        height: 130,
      ),
    );
  }
}

class Button4 extends StatelessWidget {
  const Button4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        'Images/Button4.png',
        width: 130,
        height: 130,
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        'Images/Button2.png',
        width: 130,
        height: 130,
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        'Images/Button1.png',
        width: 130,
        height: 130,
      ),
    );
  }
}
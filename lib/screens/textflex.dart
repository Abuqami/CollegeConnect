import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class textflex extends StatelessWidget {
  const textflex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              width: 300,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(FontAwesomeIcons.user),
                        SizedBox(width: 10,),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(child: Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),),
                              Flexible(child: Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),),
                            ],
                          ),
                        ),

                        Row(
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:collegeconnect/screens/Forgot_Password.dart';

import 'landing_page.dart';
import 'package:flutter/material.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(2.0),
        child: Column(

          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: kApplication_Title_Style,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              hintText: 'Example@iau.edu.sa'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: '•••••••••••••••••••••'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 2.0,
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(ForgotPassword());
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color(0xFF199D8C),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 235,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF9DDAC),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                fontSize: 17
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account? ",
                    style: TextStyle(
                      color: Color(0xFF199D8C),
                    ),
                  ),
                  Text(
                    "Create new account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF199D8C),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

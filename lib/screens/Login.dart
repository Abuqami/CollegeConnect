import 'package:collegeconnect/screens/Forgot_Password.dart';
import 'package:collegeconnect/screens/Homepage.dart';
import 'package:collegeconnect/screens/MyApp1.dart';
import 'package:collegeconnect/widgets/CollegeConnect_TextFormField.dart';

import 'package:flutter/material.dart';
import 'package:collegeconnect/utilities/constants.dart';
import 'package:get/get.dart';
import 'package:collegeconnect/utilities/Extension.dart';
import 'package:collegeconnect/widgets/Buttons/MainPagesSubmitButton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

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
                    style: k_Application_Title_Style,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          CollegeConnect_TextFormField(
                            label: 'Email',
                            hintText: 'Example@iau.edu.sa',
                            validator: (val) {
                              if (!val!.isValidEmail) {
                                return 'Please enter your email as follows: Example@iau.edu.sa';
                                return null;
                              }
                              return null;
                            },
                            maxlength: 21,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          CollegeConnect_TextFormField(
                            label: 'Password',
                            formObsecureText: true,
                            validator: (val) {
                              if (!val!.isValidPassword) {
                                return "Minimum eight characters, at least one uppercase letter, one lowercase letter\none number and one special character";
                              }
                              return null;
                            },
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
                                onTap: () {
                                  Get.to(
                                    () => ForgotPassword(),
                                  );
                                },
                                child: loginPageTexts(
                                  text: 'Forgot Password?',
                                  fontsize: 12,
                                  textDecoration: TextDecoration.underline,
                                  textFontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          MainPagesSubmitButton(
                            formKey: _formKey,
                            buttonText: 'Login',
                            onTap: () {
                              Get.to(Homepage());
                              if (!_formKey.currentState!.validate()) {
                              } else {}
                            },
                            width: 235,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  loginPageTexts(
                    text: 'Do not have an account? ',
                  ),
                  loginPageTexts(
                    textFontWeight: FontWeight.bold,
                    text: 'Create new account',
                    textDecoration: TextDecoration.underline,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class loginPageTexts extends StatelessWidget {
  const loginPageTexts(
      {this.text, this.textFontWeight, this.textDecoration, this.fontsize});
  final String? text;
  final TextDecoration? textDecoration;
  final FontWeight? textFontWeight;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(MyApp1());
      },
      child: Text(
        "$text",
        style: TextStyle(
          fontWeight: textFontWeight,
          color: Color(0xFF199D8C),
          decoration: textDecoration,
          fontSize: fontsize,
        ),
      ),
    );
  }
}

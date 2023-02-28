// ignore: unused_import
import 'package:project_dev99/Components/already_have_an_account_acheck.dart';
import 'package:project_dev99/Components/rounded_button.dart';
import 'package:project_dev99/Components/rounded_input_filed.dart';
import 'package:project_dev99/Components/rounded_password_field.dart';
import 'package:project_dev99/Screens/Login/login_screen.dart';
import 'package:project_dev99/Screens/SignUp/Components/background.dart';
import 'package:project_dev99/Screens/SignUp/Components/or_driver.dart';

// ignore: unused_import
import 'package:project_dev99/Screens/SignUp/Components/social_icon.dart';

// ignore: unused_import
import 'package:project_dev99/const.dart';
import 'package:flutter/material.dart';

// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../../../controller/auth_controller.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = AuthController();

    var _formKey = GlobalKey<FormState>();

    Size size = MediaQuery.of(context).size;

    // ignore: sized_box_for_whitespace
    return Background(
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Create Your Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff573353),
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/images/Create Your Account 2 (1).png",
                  height: size.height * 0.25,
                ),
                RoundedInputField(
                  controller: authController.firstnameController,
                  hintText: "First Name",
                  icon: Icons.person,
                  onChanged: (value) {},
                  obscureText: false,
                  keyboardType: null,
                ),
                RoundedInputField(
                  controller: authController.lastnameController,
                  hintText: "Last Name",
                  icon: Icons.person,
                  onChanged: (value) {},
                  obscureText: false,
                  keyboardType: null,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                RoundedInputField(
                  controller: authController.usernameController,
                  hintText: "Username",
                  icon: Icons.person,
                  onChanged: (value) {},
                  obscureText: false,
                  keyboardType: null,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                RoundedInputField(
                  controller: authController.emailController,
                  hintText: "Email",
                  icon: Icons.email,
                  onChanged: (value) {},
                  obscureText: false,
                  keyboardType: null,
                ),
                RoundedPasswordFiled(
                  controller: authController.passwordController,
                  onChanged: (value) {},
                ),
                RoundedButton(
                  text: "Register",
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      try {
                        authController.register();
                        authController.isregister?showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return LoginScreen();
                                          },
                                        ),
                                      );
                                      // ignore: avoid_print
                                      print('ok');
                                    },
                                    child: const Text(
                                      'Ok',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff573353),
                                      ),
                                    ),
                                  ),
                                ],
                                backgroundColor: KPrimaryLightColor,
                                title: const Text(
                                  'Title',
                                ),
                                titleTextStyle: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff573353),
                                ),
                                content: const Text('Successfully registered'),
                                contentTextStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff573353),
                                ),
                              );
                            }) :  showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: KPrimaryLightColor,
                                title: const Text(
                                  'Title',
                                ),
                                titleTextStyle: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff573353),
                                ),
                                content: const Text(' register fiaild'),
                                contentTextStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff573353),
                                ),
                              );
                            });
                        ;
                      } catch (e) {

                        print(e);
                      }
                    }
                  },
                  onPressed: () {},
                  child: null,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                OrDriver(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/iconmonstr-github-1 (1).svg",
                        height: 90,
                        width: 80,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        "assets/icons/icons8-gmail-logo.svg",
                        height: 80,
                        width: 80,
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_dev99/Components/already_have_an_account_acheck.dart';
import 'package:project_dev99/Components/rounded_button.dart';
import 'package:project_dev99/Components/rounded_input_filed.dart';
import 'package:project_dev99/Components/rounded_password_field.dart';
import 'package:project_dev99/Screens/Guiding/guide_me_screen.dart';
import 'package:project_dev99/Screens/Login/Components/background.dart';
import 'package:project_dev99/Screens/SignUp/signup_Screen.dart';

import '../../../controller/auth_controller.dart';

class Body extends StatelessWidget {
  AuthController authController = AuthController();

  var _formKey= GlobalKey<FormState>();

   Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff573353),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/icons/PHP_Assignment_help.svg",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputField(
                controller: authController.emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: "Enter Your Email",
                onChanged: (value) {},
                obscureText: false,
              ),
              RoundedPasswordFiled(
                controller: authController.passwordController,
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                text: "Login",
                press: () {
                 if (_formKey.currentState!.validate()) {
                    authController.loginUser();
                    }
                },
                onPressed: () {},
                child: null,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

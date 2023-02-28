// ignore: unused_import
import 'package:project_dev99/const.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function()? press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don`t Have an Account ? " : "Already Have an Account ? ",
          style: const TextStyle(
            color: Color(0xff573353),
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? " Sign Up " : "Sign In",
            style: const TextStyle(
              color: Color(0xff573353),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

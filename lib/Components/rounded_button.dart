import 'package:project_dev99/const.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color color, textColor;

  const RoundedButton({
    Key? key,
    required this.text,
    this.press,
    this.color = KPrimaryColor,
    this.textColor = Colors.white,
    required Null Function() onPressed,
    required child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 40),
          color: const Color(0xffFDA758),
          onPressed: press,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff573353),
            ),
          ),
        ),
      ),
    );
  }
}

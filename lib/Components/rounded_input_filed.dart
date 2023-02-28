import 'package:project_dev99/Components/text_field_container.dart';

// ignore: unused_import
import 'package:project_dev99/const.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  var keyboardType;
  var controller;

  RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.email,
    required this.onChanged,
    required bool obscureText,
    required this.keyboardType,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: const Color(0xff573353),
            ),
            hintText: hintText,
            border: InputBorder.none),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your email';
          }
          return null;
        },
      ),
    );
  }
}

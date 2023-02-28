import 'package:project_dev99/Components/text_field_container.dart';

// ignore: unused_import
import 'package:project_dev99/const.dart';
import 'package:flutter/material.dart';

class RoundedPasswordFiled extends StatelessWidget {
  final ValueChanged<String> onChanged;

  var controller;

  RoundedPasswordFiled({
    Key? key,
    required this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color(0xff573353),
          ),
          suffixIcon: Icon(Icons.visibility),
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your password';
          }
          if (value.length <= 8) {
            return 'Password must be at least 8 characters';
          }
          return null;
        },
      ),
    );
  }
}

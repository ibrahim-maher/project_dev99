import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final apiUrlForLogin = 'http://139.59.209.91:1337/api/auth/local';

  bool isregister = false;

  Future<Map<String, dynamic>> loginUser() async {
    final response = await http.post(
      Uri.parse(apiUrlForLogin),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "identifier": emailController.text,
        "password": passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString('email', emailController.text);
      await sharedPreferences.setString('password', passwordController.text);
      print(responseData);
      return responseData;
    } else {
      throw Exception('Failed to authenticate user');
    }
  }

  final apiUrlForsign = 'http://139.59.209.91:1337/api/auth/local/register';

  Future<Map<String, dynamic>> register() async {
    try {
      final response = await http.post(
        Uri.parse(apiUrlForsign),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'email': emailController.text,
          'password': passwordController.text,
          'first_name': firstnameController.text,
          'last_name': lastnameController.text,
          'username': usernameController.text
        }),
      );

      if (response.statusCode == 200) {
        isregister = true;
        final responseData = json.decode(response.body);
        print(responseData);
        return responseData;
      } else {
        throw Exception('Failed to register user');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server: $e');
    }
  }
}

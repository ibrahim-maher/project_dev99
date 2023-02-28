import 'package:project_dev99/Screens/Login/login_screen.dart';
import 'package:project_dev99/Screens/Welcome/Components/background.dart';
import 'package:project_dev99/Screens/SignUp/signup_Screen.dart';
import 'package:project_dev99/const.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Components/rounded_button.dart';


// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return  Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
         const Text("WELCOME TO",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          color: Color(0xff573353),
          ),
        ),
        const Text("Developers99",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Color(0xff573353),
        ),),
        SizedBox(height: size.height * 0.05,),
        SvgPicture.asset(
          "assets/icons/chat.svg",
          height: size.height * 0.45,
          ),
        SizedBox(height: size.height * 0.05,),
         RoundedButton(
            text:"Login",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                  },
                ),
              );
           }, onPressed: () {}, child: null,  
         ),
            RoundedButton(
            text:"Sign Up",
            color: KPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return SignUpScreen();
                },
                ),
                );
                }, onPressed: () {}, 
                child: null,
            ),
      
      
          ]),
      ),);
      
  }
}


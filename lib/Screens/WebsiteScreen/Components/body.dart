import 'package:project_dev99/Components/rounded_button.dart';
import 'package:project_dev99/Screens/WebScreen1/web_screen1.dart';
import 'package:project_dev99/Screens/WebsiteNo1/website_no1.dart';
import 'package:project_dev99/Screens/WebsiteScreen/Components/background.dart';
import 'package:project_dev99/const.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
             const Text(
              "Have You Written",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff573353),
              ),
              ),
              const SizedBox(height: 12,),
              const Padding(
                 padding: EdgeInsets.all(10),
                 child: Text(
              "Code Before ? ",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff573353),
              ),
              ),
               ),
               SizedBox(height: size.height * 0.05,),
                RoundedButton(
            text:"Yes",
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const WebScreen1();
                  },
                ),
              );
           }, onPressed: () {}, child: null,  
         ),
         const SizedBox(height: 20,),
            RoundedButton(
            text:"No",
            color: KPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return const WebsiteNo1();
                },
                ),
                );
                }, onPressed: () {}, 
                child: null,
            ),
            SizedBox(height: size.height * 0.05,),
            Image.asset("assets/images/Frame 19.png",
            height: size.height * 0.35,
            )
            

            
          ],) ) ,

    );
  }
}
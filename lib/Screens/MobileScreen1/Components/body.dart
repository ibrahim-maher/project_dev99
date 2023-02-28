import 'package:project_dev99/Components/rounded_button.dart';
import 'package:project_dev99/Screens/MobileScreen1/Components/background.dart';
import 'package:project_dev99/Screens/MobileScreen2/mobile_screen2.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
             const Center(
               child: Text(
                "How Much Coding",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff573353),
                ),
                ),
             ),
              const SizedBox(height: 12),
                 const Center(
                   child: Padding(
                     padding: EdgeInsets.all(10),
                     child: Text(
              "Experiance You Have ? ",
              style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff573353),
              ),
              ),
                   ),
                 ),
              const SizedBox(height: 20),
               Center(
                 child: RoundedButton(
                  text:"I`m Totally New At Coding",
                  press: (){
                    Navigator.push(
              context, 
              MaterialPageRoute(
                  builder: (context){
                    return const MobileScreen2 ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
               ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"I Know A Litle About Coding",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const MobileScreen2 ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
              ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"I Know Alot About Coding",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const MobileScreen2();
                  }));
                  }, onPressed: () {}, child: null,
             ),
              ),
             const SizedBox(height: 0.90),
             Center(
               child: Image.asset("assets/images/onboarding_image_3.png",
               height: size.height * 0.30,
               ),
             )
               ],
              ), 
              
             ),
    );
  }
}
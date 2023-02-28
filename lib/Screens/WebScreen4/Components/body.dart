import 'package:project_dev99/Components/rounded_button.dart';
// ignore: unused_import
import 'package:project_dev99/Screens/Guiding/guide_me_screen.dart';
import 'package:project_dev99/Screens/HomePage/home_page.dart';
import 'package:project_dev99/Screens/WebScreen4/Components/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            const Text("What Would YouLike ",
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
               child: Text("To Do In Website  ? ",
            style: TextStyle(
                fontFamily: "Poppins",
               fontSize: 30,
               fontWeight: FontWeight.bold,
               color: Color(0xff573353),
        ),
        ),
             ),
             const SizedBox(height: 12,),
             Center(
                 child: RoundedButton(
                  text:"Design",
                  press: (){
                    Navigator.push(
              context, 
              MaterialPageRoute(
                  builder: (context){
                    return const HomePage ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
               ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"Logic",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const HomePage ();
                  }));
                  }, onPressed: () {  }, child: null,
             ),
              ),
                const SizedBox(height: 8,),
              Center(
                child: RoundedButton(
                  text:"Both",
                  press: (){
                    Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return const HomePage();
                  }));
                  }, onPressed: () {}, child: null,
             ),     
        ),
        const SizedBox(height: 12,),
        Image.asset("assets/images/E-Book 1.png",
        height: size.height * 0.35,
        )
        ],
        ),
      ),
    );
  }
}
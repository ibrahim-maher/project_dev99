import 'package:project_dev99/Components/rounded_button.dart';
import 'package:project_dev99/Screens/Guiding/components/background.dart';
import 'package:project_dev99/Screens/HomePage/home_page.dart';
// ignore: unused_import
import 'package:project_dev99/Screens/OnBoarding/on_boarding_screen.dart';
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
          children: <Widget> 
        [
          const Center(
            child: Text("What Would You Like",
            style: TextStyle(
             fontFamily: "Poppins",
             fontSize: 30,
             fontWeight: FontWeight.bold,
             color: Color(0xff573353),
            ),
      ),
          ),
      const SizedBox(height: 12,),
      const Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text("To Do In Mobile ? ", 
          style: TextStyle(
            fontFamily: "Poppins",
               fontSize: 30,
               fontWeight: FontWeight.bold,
               color: Color(0xff573353),
          ),
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
      Center(
        child: Image.asset("assets/images/E-Book 1.png",
         height: size.height * 0.35,),
      )
      ],
      ),
      ), 
      );
  }
}
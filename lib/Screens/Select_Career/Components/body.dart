import 'package:project_dev99/Components/rounded_button.dart';
import 'package:project_dev99/Screens/Guiding/components/background.dart';
// ignore: unused_import
import 'package:project_dev99/Screens/Guiding/guide_me_screen.dart';
import 'package:project_dev99/Screens/HomePage/home_page.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> 
        [
          const Center(
            child: Text("Select Career",
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
                  text:"Front-End",
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
                  text:"Back-End",
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
        child: Image.asset("assets/images/E-commerce 1.png",
         height: size.height * 0.30,),
      )
      ],
      ),
      ),
    );
  }
}
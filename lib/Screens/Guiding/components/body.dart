
import 'package:flutter/material.dart';
import 'package:project_dev99/Components/rounded_button.dart';
import 'package:project_dev99/Screens/Guiding/components/background.dart';
import 'package:project_dev99/Screens/Questionaire/questionaire_screen.dart';
import 'package:project_dev99/Screens/Select_Tracks/select_Tracks.dart';
import 'package:project_dev99/const.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  


  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return  Background(
        child: Stack(
          children: <Widget>[
            Background(child: Image.asset("assets/images/Background.png")),
             Padding(
               padding: const EdgeInsets.only(bottom: 400),
               child: Center(
                 child: RoundedButton(
            text:"Select Courses",
            color: KPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const SelectTracks();
                    },
                    ),
                    );
                    }, onPressed: () {}, 
                    child: null,
           
        ),
        
               ),
               
             ),
              Padding(
                padding: const EdgeInsets.only(bottom: 220),
                child: Center(
                  child: RoundedButton(
            text:"Guide Me",
            color: KPrimaryLightColor,
            textColor: Colors.black,
            press: (){Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return const QuestionaireScreen();
                    },
                    ),
                    );
                    }, onPressed: () {}, 
                    child: null,
        ),
                ),
              )],
            )
        );
  }
}
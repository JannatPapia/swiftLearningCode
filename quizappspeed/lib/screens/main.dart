import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quizappspeed/screens/componants/body.dart';
import 'package:quizappspeed/screens/quiz_quiz_screen.dart';
import 'package:quizappspeed/screens/score/score_screen.dart';
import 'package:quizappspeed/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      //  home: WelcomeScreen(),
        home: WelcomeScreen(),
      );

  }
}


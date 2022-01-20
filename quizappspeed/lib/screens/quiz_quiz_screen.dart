
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappspeed/controllers/question_controllers.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'componants/body.dart';

class QuizScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // flutter show the back button automaticaklly
        backgroundColor: Colors.green,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}






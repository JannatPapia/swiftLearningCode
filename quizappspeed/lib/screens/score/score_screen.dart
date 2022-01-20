import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappspeed/controllers/question_controllers.dart';
import 'package:quizappspeed/screens/constants.dart';

class ScoreScreen extends StatelessWidget {
  //const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network("https://image.freepik.com/free-vector/cute-kitten-posing-white-background_353337-652.jpg", fit: BoxFit.fill,),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.green),
              ),

              Spacer(),
              Text(
                  "${_qnController.correctAns * 10}/${_qnController.question.length * 10}",
                style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.green),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}

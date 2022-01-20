import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:quizappspeed/controllers/question_controllers.dart';
import 'package:quizappspeed/modles/Questions.dart';
import 'package:quizappspeed/screens/componants/body.dart';
import 'package:quizappspeed/screens/componants/option.dart';
import 'package:quizappspeed/screens/constants.dart';

class QuestionCard  extends StatelessWidget {
  const QuestionCard({Key? key,
    // we have to pass this
  required this.question,
  }) : super(key: key);

  final Question question;

  //QuestionController _controller = Get.put(QuestionController())

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
           // simple_data[0]['question'],
            style: Theme
                .of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.black),
          ),
          SizedBox(height: kDefaultPadding/2,),
          ...List.generate(question.options.length, (index) => Option(
            index: index,
            text: question.options[index],
            press: () => _controller.checkAns(question, index),
          ),
          ),
        ],
      ),
    );
  }
}
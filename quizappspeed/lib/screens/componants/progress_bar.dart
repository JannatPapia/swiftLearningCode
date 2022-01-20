import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappspeed/controllers/question_controllers.dart';

import '../constants.dart';


class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
        //  print(controller.animation.value);
          return Stack(
            children: [
              //LayBuilder provide us the available space for thr container
              //constraints.maxWidth needed for our animation
              LayoutBuilder(
                builder: (context, constraints) => Container(
                width: constraints.maxWidth * controller.animation.value
                  , // cover 50%
                decoration: BoxDecoration(
                  gradient: kPrimaryGradient,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              ),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding/2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${(controller.animation.value * 60).round()} sec"),
                        Image.network("https://img.icons8.com/ios/344/clock--v3.png"),
                      ],
                    ),
                  )
              ),
            ],
          );
        },
      ),
    );
  }
}

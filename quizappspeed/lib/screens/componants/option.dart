import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappspeed/controllers/question_controllers.dart';
import 'package:quizappspeed/screens/constants.dart';

class Option extends StatelessWidget {
  const Option({Key? key,
    required this.text, required this.index, required this.press,
  }) : super(key: key);
      final String text;
      final int index;
      final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
       init:QuestionController(),
      builder: (qnController) {
         Color getTheRightColor() {
           if(qnController.isAnswered) {
             if(index == qnController.correctAns) {
               return Colors.green;
             }
             else if(index == qnController.selectedAns &&
                 qnController.selectedAns != qnController.correctAns) {
               return Colors.red;
             }
           }
           return Colors.grey;
         }

         IconData getTheRightIcon() {
           return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
         }

        return InkWell(
            onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color:  getTheRightColor()),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${index + 1}.$text",
                  style: TextStyle(color: getTheRightColor(), fontSize: 16),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getTheRightColor() == kGrayColor ?
                    Colors.transparent
                    : getTheRightColor(),
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(color: getTheRightColor()),
                  ),
                  child: getTheRightColor() == kGrayColor ? null
                   : Icon(getTheRightIcon(), size: 16,),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}














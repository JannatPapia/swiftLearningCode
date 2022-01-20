import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:quizappspeed/controllers/question_controllers.dart';
import 'package:quizappspeed/modles/Questions.dart';
import 'package:quizappspeed/screens/componants/progress_bar.dart';
import 'package:quizappspeed/screens/componants/question_card.dart';
import 'package:quizappspeed/screens/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //so that we can access our controller
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
        children: [
          Image.network(
              "https://image.freepik.com/free-vector/cute-kitten-posing-white-background_353337-652.jpg",
              fit: BoxFit.fill),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: ProgressBar(),
                ),
                SizedBox(height: kDefaultPadding,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx( () =>
                   Text.rich(
                    TextSpan(
                      text: "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.green),
                      children: [
                        TextSpan(
                          text: "/${_questionController.question.length}",
                          style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
                ),
                Divider(thickness: 1.5,),
                SizedBox(height: kDefaultPadding,),
                Expanded(
                    child: PageView.builder(
                      // Block swipe to next qn
                      physics: NeverScrollableScrollPhysics(),
                      controller: _questionController.pageController,
                      onPageChanged: _questionController.updateTheQnNum,
                      itemCount: _questionController.question.length,
                      itemBuilder: (context, index) => QuestionCard(
                        question: _questionController.question[index]
                      ),
                    ),
                ),
                      ],
                      ),
          ),
                        ],

    );
  }
}
/*
  class QuestionCard  extends StatelessWidget {
    const QuestionCard({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
       Text(
        simple_data[0]['question'],
        style: Theme
            .of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.black),
       ),
            SizedBox(height: kDefaultPadding/2,),
            Option(),
            Option(),
            Option(),
            Option(),
        ],
        ),
      );
    }
  }

  */

/*
class Option extends StatelessWidget {
  const Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1. Test",
            style: TextStyle(color: kGrayColor, fontSize: 16),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(color: kGrayColor),
            ),
          )
        ],
      ),
    );
  }
  }
*/














/*
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
                child: Stack(
                  children: [
                    //LayBuilder provide us the available space for thr container
                    //constrainers.maxWidth needed for our animation
                    LayoutBuilder(builder: (context, constraints) => Container(
                           width: constraints.maxWidth * 0.5, // cover 50%
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
                             Text("18 sec"),
                             Image.network("https://img.icons8.com/ios/344/clock--v3.png"),
                           ],
                    ),
                        )
                    ),
                  ],
                ),
              );
  }
}

*/

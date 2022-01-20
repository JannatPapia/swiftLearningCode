import 'dart:core';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quizappspeed/modles/Questions.dart';
import 'package:quizappspeed/screens/score/score_screen.dart';


// we use get package for our state management

class QuestionController extends GetxController with SingleGetTickerProviderMixin{
  // lets animated our progress bar

  late AnimationController _animationController;
  late Animation _animation;
  // so that we can access our animation outside
Animation get animation => this._animation;

 PageController?  _pageController;
PageController? get pageController => this._pageController;

List<Question> _questions =
    simple_data.map(
    (question) => Question(
        id: question['id'] ,
       question: question['question'] ,
      options: question['options'] ,
      answer: question['answer_index']),
      )
        .toList();

List<Question> get question => this._questions;

bool _isAnswered = false;
bool get isAnswered => _isAnswered;

 late int _correctAns;
int get correctAns => this._correctAns;

 late int _selectedAns;
int get selectedAns => this._correctAns;

// for more about obs please check documentation

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0 ;
  int get numOfCorrectAns => this._numOfCorrectAns;


//called immediately after the widget is allocated memory
@override
  void onInit() {
  // our animation duration is 60s
  //so our plan is to fill the progress bar within 60s
  _animationController =
      AnimationController(duration: Duration(seconds: 60), vsync: this);
  _animation =  Tween(begin: 0.0, end:  1.0).animate(_animationController)
  ..addListener(() {
    // update like setState
    update();
  });
  //start out animation
  //Once 60s is completed go to the next qn
  _animationController.forward().whenComplete(nextQuestion);

  _pageController = PageController();

  super.onInit();
}

@override
void onClose() {
  super.onClose();
  _animationController.dispose();
  _pageController!.dispose();
}

void checkAns(Question question, int selectedIndex) {
  // because once user press any option then it will run
  _isAnswered = true;
  _correctAns = question.answer;
  _selectedAns = selectedIndex;

  if (_correctAns == _selectedAns) _numOfCorrectAns++;

  // it will stop counter
  _animationController.stop();
  update();

  //Once user select an ans after 3s it will go to the next qn
  Future.delayed(Duration(seconds: 3), () {
    nextQuestion();
  });
}

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController!.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // then start it again
      _animationController.forward().whenComplete(nextQuestion);
    }
    else {
// Get package provide us simple way to navigate another page
      Get.to(ScoreScreen());
    }
  }
  void updateTheQnNum(int index) {
  _questionNumber.value = index + 1;
  }

}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizappspeed/screens/constants.dart';
import 'package:quizappspeed/screens/quiz_quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';


class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
       //   WebsafeSvg.network("https://image.freepik.com/free-vector/cute-watercolor-star-with-floral-wreath-isolated-white-background_159050-271.jpg"),
          SafeArea(
            child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Spacer(flex: 2,), // it will takes 2/6
                           Text(
                             "Lets Play Quiz,",
                             style: Theme.of(context).textTheme.headline4?.copyWith(
                             color: Colors.white,fontWeight: FontWeight.bold),
                           ),
                           Text("Enter your information below"),
                           Spacer(), // it will takes 1/6
                           TextField(
                             decoration: InputDecoration(
                               filled: true,
                               fillColor: Color(0xFF1C2341),
                               hintText: "Full Name",
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(12)),
                               ),
                             ),
                           ),
                           Spacer(), // it will takes 1/6
                            InkWell(
                              onTap: () => Get.to(QuizScreen()),
                             child: Container(
                             width: double.infinity,
                             alignment: Alignment.center,
                             padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                             decoration: BoxDecoration(
                               gradient: kPrimaryGradient,
                               borderRadius: BorderRadius.all(Radius.circular(12)),
                             ),
                             child: Text(
                               "Lets Start Quiz",
                               style: Theme.of(context)
                                 .textTheme
                                 .button!
                                 .copyWith(color: Colors.black),
                             ),
                           ),
                            ),
                           Spacer(flex: 2,), // it will take 2/6
                         ],
                       ),

    ),
    ),
    ],
    ),

    );
  }
}

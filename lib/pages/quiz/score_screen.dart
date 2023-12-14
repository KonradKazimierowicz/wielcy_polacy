import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wielcy_polacy/components/mainButton.dart';

import 'components/question_controller.dart';
import 'constants.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio:
                    1 / 1, // Change the aspect ratio according to your image
                child: Image.asset(
                  'img/quiz1.png',
                  fit: BoxFit.cover, // Ensure the image covers the entire space
                ),
              ),
              SizedBox(
                height: 20,
                width: 500,
              ),
              Text("Wynik",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 40,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                  "${_qnController.numOfCorrectAns}/${_qnController.questions.length}",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 30,
                  )),
              SizedBox(
                height: 40,
              ),
              MainButton(
                text: "Wróć",
                onPressed: () {
                  
                  Navigator.pushNamed(context, "/navbar");
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/mainButton.dart';
import '../constants.dart';
import '../questions.dart';
import 'option.dart';
import 'question_controller.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    required Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 238, 232, 1),
        border: Border.all(color: primaryColor, width: 3),
        borderRadius: BorderRadius.circular(25),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                question.question,
                style:  TextStyle(color: Color.fromRGBO(43, 42, 38, 1) ,fontSize:18)),
              
              const SizedBox(height: kDefaultPadding / 2),
              ...List.generate(
                question.options.length,
                (index) => Option(
                  index: index,
                  text: question.options[index],
                  press: () => controller.checkAns(question, index),
                ),
              ),
              SizedBox(
                height: constraints.maxWidth > 600 ? 20 : 10,
              ),
              MainButton(
                text: "Następne",
                onPressed: () => controller.nextQuestion(),
              ),
            ],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wielcy_polacy/components/mainButton.dart';

import '../constants.dart';
import 'progress_bar.dart';
import 'question_card.dart';
import 'question_controller.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        // SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Pytanie ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Color.fromRGBO(43, 42, 38, 1)),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Color.fromRGBO(43, 42, 38, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Divider(thickness: 1.5, color: primaryColor,),
              ),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index], key: null,),
                ),
              ),
             
            ],
          ),
        )
      ],
    );
  }
}
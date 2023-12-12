import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


import '../constants.dart';
import 'question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(43, 42, 38, 1), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(184, 158, 119, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text("${(controller.animation.value * 30).round()} sec", style: TextStyle(color: Color.fromRGBO(43, 42, 38, 1)),),
                      
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
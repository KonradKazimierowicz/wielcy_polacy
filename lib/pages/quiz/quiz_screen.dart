import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';
import 'components/question_controller.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Body(),
    );
  }
}
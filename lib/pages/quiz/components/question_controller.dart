

import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../questions.dart';
import '../score_screen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController;

  final List<Question> _questions = sample_data
      .map((question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index'],
          ))
      .toList();
  List<Question> get questions => _questions;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;

  int n = 0;

@override
void onInit() {
  
  
  _animationController = AnimationController(duration: const Duration(seconds: 30), vsync: this);
  _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
    ..addListener(() {
      update();
    });

  _animationController.forward().whenComplete(nextQuestion);
  _pageController = PageController();

  super.onInit();
}

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

 

  void checkAns(Question question, int selectedIndex) {
    if (!_isAnswered) {
      _isAnswered = true;
      _correctAns = question.answer;
      _selectedAns = selectedIndex;

      if (_correctAns == _selectedAns) {
        _numOfCorrectAns++;
        print('Correct Answer! Score: $_numOfCorrectAns');
      } else {
        print('Incorrect Answer! Score: $_numOfCorrectAns');
      }

      _animationController.stop();
      update();

      Future.delayed(const Duration(seconds: 3), () {
        nextQuestion();
      });
    }
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false; 

      if (_isAnswered) {
        
        _pageController.nextPage(
          duration: const Duration(milliseconds: 250),
          curve: Curves.ease,
        );

        _animationController.reset();
        _animationController.forward().whenComplete(nextQuestion);
      } else {
        _handleError();

        _pageController.nextPage(
          duration: const Duration(milliseconds: 250),
          curve: Curves.ease,
        );
        _animationController.reset();
        _animationController.forward().whenComplete(nextQuestion);
      }
    } else {
      Get.to(ScoreScreen());
      n++;
    }
  }

  void _handleError() {
    String errorMessage = 'Error: Brak odpowiedzi w typaniu $_questionNumber';

    print(errorMessage);

    Fluttertoast.showToast(
      msg: errorMessage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
 
}

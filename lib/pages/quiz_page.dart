import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wielcy_polacy/pages/quiz/components/question_controller.dart';
import 'package:wielcy_polacy/pages/quiz/quiz_screen.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(184, 158, 119, 1),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20)),
                  ),
                  child: const Center(
                    child: Text(
                      "Sprawdź swoją wiedzę",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Wybierz interesujący cię QUIZ:",
                style: TextStyle(
                  color: Color.fromRGBO(43, 42, 38, 1),
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                  icon: Image.asset('img/quiz1.png',
                      height: MediaQuery.of(context).size.height * 0.30),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizScreen()));
                    QuestionController().resetQuiz();
                  }),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                icon: Image.asset('img/quiz2.png',
                    height: MediaQuery.of(context).size.height * 0.30),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Error: Tymczasowo niedostępne.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

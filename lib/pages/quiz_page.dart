import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/image_slider.dart';
import 'package:wielcy_polacy/pages/quiz/quiz_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
}

class QuizPage extends StatelessWidget {
  const QuizPage({super.key, Key? key2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 80,
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
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Wybierz interesujący cię QUIZ:",
              style: TextStyle(
                color: Color.fromRGBO(43, 42, 38, 1),
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            IconButton(
              icon: Image.asset('img/quiz1.png'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>  QuizScreen())),
            ),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              icon: Image.asset('img/quiz2.png'),
              
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
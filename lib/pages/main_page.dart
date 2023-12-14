import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/image_slider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(184, 158, 119, 1),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Poznaj wielkich Polaków",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Wybierz interesującą cię postać.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 25,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const ImageSliderWithIcons(
                          imageUrls: [
                            'img/JanSzczepaniak.png',
                            'img/JanCzochralski.png',
                            'img/WitoldZgielecki.png',
                            'img/StefanDrzewiecki.png',
                          ],
                          imageTexts: [
                            'Jan Szczepaniak',
                            'Jan Czochralski',
                            'Witold Zgiełłcki',
                            'Stefan Drzewiecki',
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

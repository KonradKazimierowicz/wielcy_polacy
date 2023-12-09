import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/image_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wielcy_polacy/components/image_slider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
}

class MainPage extends StatelessWidget {
  const MainPage({super.key, Key? key2});

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
                    "Poznaj wielkich Polaków",
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
              "Wybierz interesującą cię postać.",
              style: TextStyle(
                color: Color.fromRGBO(43, 42, 38, 1),
                fontSize: 25,
              ),
            ),
            
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
          ]),
        ),
      ),
    );
  }
}

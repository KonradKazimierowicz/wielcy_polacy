import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/mainButton.dart';
import 'package:wielcy_polacy/pages/characters/description/czochralski_desc.dart';

import '../../components/appbar.dart';

class Czochralski extends StatelessWidget {
  const Czochralski({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Jan Czochralski",
        onLeadingPressed: () => Navigator.pop(context)
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'img/czochralski.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "Polski chemik, metaloznawca. Wynalazca między innymi powszechnie stosowanej metody otrzymywania monokryształów krzemu, będącej podstawą procesu produkcji układów scalonych. Najczęściej cytowany polski uczony, radca Izby Przemysłowo-Handlowej w Warszawie",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 10),
            MainButton(
              text: "Dowiedz się więcej",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  CzochralskiDesc()));
              },
            ),
            //const NavBar(),
          ],
        ),
      ),
    );
  }
}

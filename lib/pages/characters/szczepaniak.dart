import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/mainButton.dart';

import '../../components/appbar.dart';
import 'description/szczepaniak_desc.dart';

class Szczepaniak extends StatelessWidget {
  const Szczepaniak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Jan Szczepaniak",
          onLeadingPressed: () => Navigator.pop(context)),
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
                    'img/szczepaniak.png',
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width*0.85,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Polski nauczyciel, wynalazca. Pomimo tego, że w dziedzinie techniki był samoukiem, jest autorem ponad 50 wynalazków i kilkuset opatentowanych pomysłów technicznych z dziedziny fotografii barwnej, tkactwa czy telewizji.",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SzczepaniakDesc()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

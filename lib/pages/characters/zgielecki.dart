import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/mainButton.dart';
import 'package:wielcy_polacy/pages/characters/description/zgielecki_desc.dart';

import '../../components/appbar.dart';

class Zgielecki extends StatelessWidget {
  const Zgielecki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Witold Zgielecki",
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
                    'img/zgielecki.png',
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
                  "Polski wynalazca, geolog, hutnik, nafciarz i filantrop. Określany mianem „ojca nafty bakijskiej” czy „polskiego Nobla”. Główny filantrop nauki polskiej – darczyńca ówczesnej Kasy im. Mianowskiego oraz Uniwersytetu Warszawskiego.",
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
                    MaterialPageRoute(builder: (context) => ZgieleckiDesc()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

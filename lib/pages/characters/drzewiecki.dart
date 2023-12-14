import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/mainButton.dart';
import 'package:wielcy_polacy/pages/characters/description/dzrzewiecki_desc.dart';

import '../../components/appbar.dart';

class Drzewiecki extends StatelessWidget {
  const Drzewiecki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
          title: "Stefan Drzewiecki",
          onLeadingPressed: () => Navigator.pop(context)),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Container(
                color: Colors.transparent,
                child: Image.asset(
                  'img/drzewiecki.png',
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.85,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                "Polski inżynier, konstruktor i wynalazca, urodzony w zasłużonej rodzinie szlacheckiej na Podolu. Pionier żeglugi podwodnej, Drzewiecki skonstruował pierwszy na świecie okręt podwodny i wprowadził innowacje w rosyjskiej marynarce.",
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
                  MaterialPageRoute(builder: (context) => DrzewieckiDesc()));
            },
          ),
        ],
      ),
    ));
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/mainButton.dart';
import '../../components/appbar.dart';
import 'description/dzrzewiecki_desc.dart';

class Drzewiecki extends StatelessWidget {
  const Drzewiecki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Stefan Drzewiecki",
          onLeadingPressed: () => Navigator.pop(context),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.85,
                    color: Colors.transparent,
                    child: Image.asset(
                      'img/drzewiecki.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DrzewieckiDesc()),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Czochralski extends StatelessWidget {
  const Czochralski({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 600,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('img/czochralski.png')),
              ),
            )
          ],
        ),
      ),
    );
  }
}

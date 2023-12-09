import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/appbar.dart';
import 'package:wielcy_polacy/components/navbar.dart';

class CzochralskiDesc extends StatelessWidget {
  const CzochralskiDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Jan Czochralski",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),     
              
            ],
          ),
        ),
      ),
    );
  }
}

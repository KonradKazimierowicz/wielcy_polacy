import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/appbar.dart';

class CzochralskiDesc extends StatelessWidget {
  CzochralskiDesc({Key? key}) : super(key: key);

  TextStyle listStyle =
      const TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(
        title: "Jan Czochralski",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Podstawowe informacje:",
                    style: TextStyle(
                      color: Color.fromRGBO(43, 42, 38, 1),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(43, 42, 38, 1),
                ),
                const SizedBox(height: 10),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• Urodzony 23 października 1885 roku w Kcyni.",
                                style: TextStyle(
                                    color: Color.fromRGBO(43, 42, 38, 1),
                                    fontSize: 18),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "• Syn Franciszka Czochralskiego i Marty Suchomskiej, ósmy z dziesięciorga rodzeństwa.",
                                style: TextStyle(
                                    color: Color.fromRGBO(43, 42, 38, 1),
                                    fontSize: 18),
                                softWrap: true,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "• Zmarł 22 kwietnia 1953 roku w Poznaniu.",
                                style: TextStyle(
                                    color: Color.fromRGBO(43, 42, 38, 1),
                                    fontSize: 18),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'img/czochralski1.png',
                          alignment: Alignment.center,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Dalsza część życia:",
                    style: TextStyle(
                      color: Color.fromRGBO(43, 42, 38, 1),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(43, 42, 38, 1),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

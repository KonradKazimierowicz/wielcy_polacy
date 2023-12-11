import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/appbar.dart';

class ZgieleckiDesc extends StatefulWidget {
  ZgieleckiDesc({Key? key}) : super(key: key);

  @override
  State<ZgieleckiDesc> createState() => _ZgieleckiDescState();
}

class _ZgieleckiDescState extends State<ZgieleckiDesc> {
  TextStyle listStyle =
      const TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Witold Zgielecki",
        onLeadingPressed: () => Navigator.pop(context),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
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
                              "• Urodzony 6 stycznia 1850 rokuw Wargawie w Królestwie Polskim.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Był uczniem Dmitrija Mendelejewa.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Zmarł 6 lipca 1904 roku w Baku w Imperium Rosyjskim",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Image.asset(
                        'img/zgielecki1.png',
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Edukacja:",
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
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "• W latach 1859–1866 Witold uczęszczał do Gimnazjum Gubernialnym w Płocku.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Po ukończeniu gimnazjum w latach 1866–1870 studiował na Wydziale Matematyczno-Fizycznym Szkoły Głównej Warszawskiej i w latach 1870–1875 w Instytucie Górniczym w Petersburgu.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Wynalazki:",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(
                        color: Color.fromRGBO(43, 42, 38, 1),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "• Platforma Wiertnicza:",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Zglenicki zaprojektował platformę wiertniczą do podmorskich wierceń, co uczyniło go pionierem w tej dziedzinie. To urządzenie umożliwiło skuteczniejsze i bezpieczniejsze prowadzenie prac wydobywczych na dnie morskim.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 18,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "• Baku - pole naftowe:",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Polski wynalazca odkrył złoża naftowe w Baku tworząc to miejsce wyjątkowym, bardzo dochodowym. Został uhonorowany Orderem Lwa i Słońca za swoje osiągnięcie geologiczne.",
                                      style: TextStyle(
                                        color: Color.fromRGBO(43, 42, 38, 1),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  Image.asset(
                                    'img/orderLwa.png',
                                    alignment: Alignment.center,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("(Order Lwa i Słońca)")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "img/poleNaftowe.png",
                          alignment: Alignment.center,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "(Pole naftowe w Baku)",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 60,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/appbar.dart';

class DrzewieckiDesc extends StatefulWidget {
  DrzewieckiDesc({Key? key}) : super(key: key);

  @override
  State<DrzewieckiDesc> createState() => _DrzewieckiDescState();
}

class _DrzewieckiDescState extends State<DrzewieckiDesc> {
  TextStyle listStyle =
      const TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Stefan Drzewiecki",
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
                              "• Stefan Drzewiecki urodził się 14 lub 26 lipca 1844 roku w Kunce na Podolu (obecnie Ukraina).",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Pochodził z zasłużonej i patriotycznej rodziny szlacheckiej.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Jego ojciec, Karol, brał udział w powstaniu listopadowym, był działaczem społecznym i literatem.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Jako młody chłopiec został wysłany do nauki do Paryża przez ambitnych rodziców.",
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
                        'img/drzewiecki1.png',
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
                        "• Ukończył jezuicką szkołę średnią w Paryżu, ale nie uzyskał świadectwa dojrzałości z powodu trudnego charakteru i stosunku do jezuitów.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "• Podjął studia w paryskiej Ecole Centrale des Arts et Manufactures, gdzie uzyskał dyplom inżyniera.",
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
                        "• Okręt podwodny:",
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
                          "W 1879 roku Drzewiecki przeprowadził uroczysty pokaz swojego pierwszego na świecie okrętu podwodnego w Odessie. Ten jednoosobowy statek podwodny, napędzany siłą ludzkich mięśni, był wyposażony w zdalnie odpalaną minę, reprezentującą innowacyjne podejście do uzbrojenia morskiego. Pomimo skromnych rozmiarów, ten prototyp zapoczątkował dalszy rozwój konstrukcji okrętów podwodnych.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'img/okretDrzewinskiego.jpg',
                          alignment: Alignment.center,
                          width: 290,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "• Licznik kilometrów:",
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
                          "Stefan Drzewiecki opatentował licznik kilometrów w 1867 roku w Paryżu. Jego wynalazek stanowił przełom w monitorowaniu przebytej odległości, szczególnie w transporcie miejskim. Licznik umożliwiał dokładne pomiar trasy podróży, co było szczególnie ważne w czasach, gdy dokładne odległości były trudne do oszacowania. Innowacyjność licznika kilometrów Drzewieckiego znalazła szerokie zastosowanie w różnych dziedzinach transportu.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "• Samolot \"Canard\":",
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
                          "W 1909 roku Drzewiecki skonstruował samolot o nazwie \"Canard\". Posiadał on tylne śmigło i samoczynne urządzenia stabilizacyjne, co było innowacyjne jak na tamte czasy. Prototyp ten był ważnym krokiem w badaniach nad konstrukcją samolotów. ",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "img/samolotDrzewinskiego.png",
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Chociaż doświadczenie to zakończyło się wypadkiem podczas lotu próbnego w 1914 roku, wprowadziło nowe perspektywy w projektowaniu samolotów i zainspirowało dalsze badania w dziedzinie lotnictwa.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Osiągnięcia:",
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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "• Był aktywnie zaangażowany w wojnę francusko-pruską i powstanie Komuny, popierając komunardów.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 18,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "• Został członkiem i doradcą Komitetu Technicznego Marynarki Rosyjskiej z pensją miesięczną 500 rubli.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 18,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "• Otrzymał Order Św. Jerzego IV klasy za męstwo w wojnie rosyjsko-tureckiej.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 18,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      )
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

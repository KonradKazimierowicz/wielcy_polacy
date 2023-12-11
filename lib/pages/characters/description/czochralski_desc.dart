import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/appbar.dart';

class CzochralskiDesc extends StatefulWidget {
  CzochralskiDesc({Key? key}) : super(key: key);

  @override
  State<CzochralskiDesc> createState() => _CzochralskiDescState();
}

class _CzochralskiDescState extends State<CzochralskiDesc> {
  TextStyle listStyle =
      const TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20);

  @override
  Widget build(BuildContext context) {
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
                              "• Urodzony 23 października 1885 roku w Kcyni.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Syn Franciszka Czochralskiego i Marty Suchomskiej, ósmy z dziesięciorga rodzeństwa.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Zmarł 22 kwietnia 1953 roku w Poznaniu.",
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
                        'img/czochralski1.png',
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "• Wyjechał do Berlina w 1904 roku.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "• Pracował w aptece, fabryce Ericha Kunheima, oraz w AEG.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "• Uzyskał tytuł inżyniera chemika Politechniki Berlińskiej.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "• Ożenił się z Margaretą Hasse.",
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
                        "• Metoda Czochralskiego:",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          "(Otrzymywania monokryształów)",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 12,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Metoda Czochralskiego polega na ostrożnym „wyciąganiu” monokryształów metali z roztopionego metalu za pomocą pręta dotykającego jego powierzchni. Została opracowana w 1918 roku. Pierwsze kryształy wytworzone przez niego przypominały metalowe druty, miały milimetr średnicy i długość około jednego metra. ",
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
                          'img/metodaCzochralskiego.png',
                          alignment: Alignment.center,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Metoda ta jest szeroko stosowana w produkcji półprzewodników, kryształów dla technologii laserowej, a także w badaniach naukowych nad nowymi materiałami o unikalnych właściwościach. Jej zalety to możliwość otrzymywania dużych, jednorodnych kryształów, co jest istotne w wielu dziedzinach nauki i technologii.",
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
                        child: Column(
                          children: [
                            Image.asset(
                              'img/monokrysztal.png',
                              alignment: Alignment.center,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                                "(Otrzymany monokryształ metodą Czochralskiego)"),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "• Bezcynowy stop łożyskowy:",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          "(Metal B)",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 12,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "W 1924 roku Jan Czochralski opracował i opatentował bezcynowy stop łożyskowy, nazwany metalem B, który stał się rewolucyjnym materiałem w produkcji panewek do ślizgowych łożysk kolejowych.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Metal B był szeroko stosowany do lat 60. XX wieku, kiedy zastąpiono go łożyskami tocznymi.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Prowadził również pionierskie prace nad technologią produkcji blach, drutów i wyprasek aluminiowych, badając stopy aluminium i standaryzując badania metalograficzne.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(height: 20),
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
                          "Za swoje wybitne osiągnięcia, Jan Czochralski otrzymał wiele nagród i wyróżnień, w tym honorowe doktoraty wielu uniwersytetów na całym świecie.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Jan Czochralski to postać, której dziedzictwo naukowe przyczyniło się do rewolucji w dziedzinie materiałów półprzewodnikowych, a jednocześnie pozostawiła trwały ślad w historii Polski poprzez zaangażowanie w sprawy narodowe. Jego prace nadal inspirują naukowców i inżynierów na całym świecie.",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
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

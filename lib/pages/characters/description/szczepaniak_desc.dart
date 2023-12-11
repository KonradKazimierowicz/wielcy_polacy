import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/appbar.dart';

class SzczepaniakDesc extends StatefulWidget {
  SzczepaniakDesc({Key? key}) : super(key: key);

  @override
  State<SzczepaniakDesc> createState() => _SzczepaniakDescState();
}

class _SzczepaniakDescState extends State<SzczepaniakDesc> {
  TextStyle listStyle =
      const TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Jan Szczepaniak",
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
                              "• Urodzony 13 czerwca 1972 roku w Rudnikach.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Syn Marianny i Ludwika Panka. Wychowywał się u swoich wujostwa, Salomei i Wawrzyńca Gradowiczów w Krośnie.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "• Zmarł 18 kwietnia 1926 roku w Tarnowie.",
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
                        'img/szczepaniak1.png',
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
                        "• W latach 1878–1885 Jan uczęszczał do pojezuickiej szkoły ludowej w Krośnie, gdzie zdobywał podstawową edukację.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "• Po ukończeniu szkoły ludowej, Szczepanik kontynuował naukę w Gimnazjum w Jaśle w latach 1885–1888.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "• Po gimnazjum, Jan Szczepanik uczęszczał do seminarium nauczycielskiego w Krakowie, kontynuując swoją ścieżkę edukacyjną.",
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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Jan Szczepaniak uzyskał 92 patenty, ale większość informacji i nich została spalona podczas Powstania Warszawskiego. Poniżej znajdziesz najważniejsze z nich:",
                          style: TextStyle(
                            color: Color.fromRGBO(43, 42, 38, 1),
                            fontSize: 15,
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        "• Kamizelka kuloodporna:",
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
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Zarówno Jan Szczepanik, jak i Kazimierz Żegleń, uważali się za wynalazców kamizelki kuloodpornej. Żegleń uzyskał patenty i przeprowadził publiczne demonstracje przed Szczepanikiem. W 1897 roku Żegleń zlecił Szczepanikowi opracowanie technologii tkania maszynowego kamizelki. Szczepanik znacząco ulepszył konstrukcję tkaniny kuloodpornej, wykorzystując nowoczesne techniki tkackie, osiągając wyższą jakość niż Żegleń, który tkał ręcznie.",
                                style: TextStyle(
                                  color: Color.fromRGBO(43, 42, 38, 1),
                                  fontSize: 15,
                                ),
                                softWrap: true,
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'img/kamizelka.png',
                                  alignment: Alignment.center,
                                ),
                                
                              ),
                              const SizedBox(width: 20),
                              const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "(Odtworzona kamizelka według wzoru z 1901 roku)",
                                  style: TextStyle(
                                    color: Color.fromRGBO(43, 42, 38, 1),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "• System barwnego tkactwa:",
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
                          "Opracowany przez wynalazcę w 1899 roku system małoobrazkowej, barwnej kliszy filmowej, na którą w 1900 Szczepanik uzyskuje brytyjski patent. Do odwzorowania kolorów wynalazca użył w niej czarno-białego filmu oraz filtrów w trzech kolorach: czerwonym, zielonym oraz niebieskim.",
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
                      Column(
                        children: [
                          Image.asset(
                            'img/maszynaTkacka.png',
                            alignment: Alignment.center,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                              "(Maszyna tkacka opatentowana przez Jana Szczepanika)"),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "• Telektroskop:",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                              "Urządzenie służące do przesyłania na odległość ruchomego obrazu kolorowego wraz z dźwiękiem, wynalezione i opatentowane w 1897 roku przez polskiego wynalazcę i prekursora „telewizji elektrycznej” Jana Szczepanika.",
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
                          const Text(
                            "• System kolorowej fotografii oraz światłoczuły papier barwny:",
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
                              "Metoda ta została wykorzystana później przez przedsiębiorstwa Kodak (1928) oraz Agfa (1932).",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 15,
                              ),
                              softWrap: true,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "• Caloridul:",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
                              "Został wynaleziony w 1901 roku przez polskiego wynalazcę Jana Szczepaniaka. Jest to samoczynny regulator ciągu kominowego w paleniskach kotłowych dający duże oszczędności węgla. Opatentowany został w Niemczech oraz Anglii.",
                              style: TextStyle(
                                color: Color.fromRGBO(43, 42, 38, 1),
                                fontSize: 15,
                              ),
                              softWrap: true,
                            ),
                          ),
                          const SizedBox(height: 60,)
                        ],
                      ),
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

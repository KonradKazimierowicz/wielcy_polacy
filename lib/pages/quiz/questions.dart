class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Rok urodzenia Jana Czochralskiego?",
    "options": ['1885', '1904', '1918', '1924'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Żona Jana Czochralskiego?",
    "options": ['Marta Suchomska', 'Margaret Hasse', 'Maria Kunheim', 'Anna Czochralska'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Metoda opracowana przez Jana Czochralskiego?",
    "options": ['Ehrlicha', 'Streckera', 'Czochralskiego', 'Fischer-Tropscha'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Znaczenie metody Czochralskiego?",
    "options": ['Produkcja łożysk', 'Otrzymywanie monokryształów', 'Produkcja blach', 'Badania nad metalami'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Rok śmierci Jana Czochralskiego?",
    "options": ['1918', '1953', '1960', '1985'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Rok urodzenia Jana Szczepanika?",
    "options": ['1872', '1885', '1897', '1901'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "Edukacja Jana Szczepanika?",
    "options": ['Tarnów', 'Kraków', 'Jaślach', 'Krosno'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Ulepszenie wynalazku Jan Szczepanika?",
    "options": ['Telektroskop', 'Kamizelka kuloodporna', 'Fotografia kolorowa', 'Caloridul'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Rok opatentowania systemu kolorowej fotografii przez Jana Szczepanika?",
    "options": ['1899', '1900', '1901', '1928'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Co to jest Caloridul, wynalezione przez Jana Szczepanika?",
    "options": ['Instrument muzyczny', 'Regulator kominowy', 'Mikroskop', 'Silnik elektryczny'],
    "answer_index": 1,
  },
  {
    "id": 11,
    "question": "Rok urodzenia Witolda Zglenickiego?",
    "options": ['1825', '1850', '1875', '1890'],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question": "Edukacja Witolda Zglenickiego po gimnazjum?",
    "options": ['Warszawa', 'Petersburg', 'Płock', 'Kraków'],
    "answer_index": 1,
  },
  {
    "id": 13,
    "question": "Wynalezienie przez Witolda Zglenickiego?",
    "options": ['Mikroskop elektronowy', 'Platforma wiertnicza', 'Elektrownia wodna', 'Telewizor'],
    "answer_index": 1,
  },
  {
    "id": 14,
    "question": "Za co Witold Zglenicki otrzymał Order Lwa i Słońca?",
    "options": ['Platforma wiertnicza', 'Odkrycie metali', 'Działalność charytatywna', 'Osiągnięcia w nauce'],
    "answer_index": 0,
  },
  {
    "id": 15,
    "question": "Rok śmierci Witolda Zglenickiego?",
    "options": ['1875', '1898', '1904', '1920'],
    "answer_index": 2,
  },
   {
    "id": 16,
    "question": "Data urodzenia Stefana Drzewieckiego w Kunce na Podolu?",
    "options": ['14 lipca 1844', '26 lipca 1844', '1 sierpnia 1844', '10 września 1844'],
    "answer_index": 1,
  },
  {
    "id": 17,
    "question": "Ukończenie szkoły średniej przez Stefana Drzewieckiego?",
    "options": ['Warszawa', 'Paryż', 'Kraków', 'Odessa'],
    "answer_index": 1,
  },
  {
    "id": 18,
    "question": "Rok pokazu pierwszego okrętu podwodnego przez Stefana Drzewieckiego w Odessie?",
    "options": ['1855', '1879', '1900', '1923'],
    "answer_index": 1,
  },
  {
    "id": 19,
    "question": "Co Stefana Drzewieckiego skonstruował w 1867 roku w Paryżu?",
    "options": ['Telegraf', 'Aparat fotograficzny', 'Licznik kilometrów', 'Żarówka'],
    "answer_index": 2,
  },
  {
    "id": 20,
    "question": "Rok skonstruowania samolotu 'Canard' przez Stefana Drzewieckiego?",
    "options": ['1885', '1909', '1920', '1935'],
    "answer_index": 1,
  },
];

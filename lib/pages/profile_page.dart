import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wielcy_polacy/pages/starting/login_page.dart';
import 'package:restart_app/restart_app.dart';
import 'package:wielcy_polacy/components/appbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late User? user;
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    _nameController.text = user?.displayName ?? "";
  }

  void _editProfileName() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edytuj nazwę'),
          content: TextField(
            controller: _nameController,
            decoration: const InputDecoration(hintText: 'Wpisz nową nazwę'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Anuluj'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (_nameController.text.isNotEmpty) {
                  await user?.updateDisplayName(_nameController.text);
                  setState(() {
                    user = FirebaseAuth.instance.currentUser;
                  });
                }
                Navigator.pop(context);
              },
              child: const Text('Zapisz'),
            ),
          ],
        );
      },
    );
  }

  Widget _profileImage() {
    if (user?.photoURL != null) {
      return Image.network(
        user!.photoURL.toString(),
        height: 50,
        width: 50,
      );
    } else {
      return const Icon(
        Icons.account_circle,
        size: 50,
      );
    }
  }

  Widget _display() {
    String displayName = user?.displayName ?? "";
    String email = user?.email ?? "";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          displayName.isNotEmpty ? displayName : email,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  void _openFavoritesWindow() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritesWindow(),
      ),
    );
  }

  void _openAchievementsWindow() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AchievementsWindow(),
      ),
    );
  }

  void _openFAQWindow() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FAQWindow(),
      ),
    );
  }

  void _logout() async {
    try {
      
      await FirebaseAuth.instance.signOut();
      print('Firebase sign-out successful');

      
      final GoogleSignIn googleSignIn = GoogleSignIn();
      await googleSignIn.signOut();
      print('Google sign-out successful');

      Navigator.pop(context); 
      Restart.restartApp();
    } catch (e, stackTrace) {
      print('Error during logout: $e');
      print('StackTrace: $stackTrace');
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      width: double.infinity,
                      height: 200,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(184, 158, 119, 1),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        "Profil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: (MediaQuery.of(context).size.width - 350) / 2,
                    child: Center(
                      child: Container(
                        height: 80,
                        width: 350,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(242, 238, 232, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 12,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                            ),
                            _profileImage(),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: _display(),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: _editProfileName,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: _openFavoritesWindow,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite_border, size: 25),
                      SizedBox(width: 10),
                      Text("Ulubione", style: TextStyle(fontSize: 20)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: _openAchievementsWindow,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.emoji_events, size: 25),
                      SizedBox(width: 10),
                      Text("Osiągnięcia", style: TextStyle(fontSize: 20)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: _openFAQWindow,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.question_answer, size: 25),
                      SizedBox(width: 10),
                      Text("FAQ", style: TextStyle(fontSize: 20)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 300),
              IconButton(
                icon: Image.asset('img/signOut.png'),
                onPressed: () async {
                  FirebaseAuth.instance.signOut();
                  await GoogleSignIn().signOut();
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoritesWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Ulubione", onLeadingPressed: () => Navigator.pop(context)),
      body: const Center(
        child: Text(
          "Miejsce na ulubione postacie",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class AchievementsWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Osiągnięcia", onLeadingPressed: () => Navigator.pop(context)),
      body: const Center(
        child: Text(
          "Miejsce na osiągnięcia",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class FAQWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "FAQ", onLeadingPressed: () => Navigator.pop(context)),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "1. Na czym polega aplikacja?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(43, 42, 38, 1),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Aplikacja to wygodne źródło wiedzy o wielkich polakach takich jak Jan Czochralski, Witold Zglenicki, Stefan Drzewiecki i Jan Szczepaniak. \nW przystępny sposób pokazuje najważniejsze informacje o tych postaciach.",
                style: TextStyle(
                    color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "2. Czy można korzystać z aplikacji offline?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(43, 42, 38, 1),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Tak, z aplikacji można po zalogowaniu korzystać bez użycia internetu. Sprawia to, że jest ona jeszcze bardziej wszechstronna",
                style: TextStyle(
                    color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "3. Czy aplikacja oferuje treści multimedialne?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(43, 42, 38, 1),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Aplikacja docelowo będzie zawierać specjalną zakładkę poświęconą multimediom. Na ten moment występują tylko przy opisach postacii.",
                style: TextStyle(
                    color: Color.fromRGBO(43, 42, 38, 1), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

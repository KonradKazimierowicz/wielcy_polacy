import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
          title: Text('Edytuj nazwę'),
          content: TextField(
            controller: _nameController,
            decoration: InputDecoration(hintText: 'Wpisz nową nazwę'),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Anuluj'),
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
              child: Text('Zapisz'),
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
      return Icon(
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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
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

  Future<void> _logout() async {
    final googleSignIn = GoogleSignIn();
    try {
      if (googleSignIn.currentUser != null) {
        await googleSignIn.signOut();
      }
      await FirebaseAuth.instance.signOut();
      Restart.restartApp();
    } catch (e) {
      print("Error during logout: $e");
      // Handle the error appropriately
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
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(184, 158, 119, 1),
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                    ),
                    child: Center(
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
                          color: Color.fromRGBO(242, 238, 232, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 12,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                            ),
                            _profileImage(),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: _display(),
                            ),
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: _editProfileName,
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
                  child: Row(
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: _openAchievementsWindow,
                  child: Row(
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: _openFAQWindow,
                  child: Row(
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
              SizedBox(height: 20),
              SizedBox(height: 300),
              IconButton(
                icon: Image.asset('img/signOut.png'),
                onPressed: _logout,
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
        title: "Ulubione",
        onLeadingPressed: () => Navigator.pop(context)
      ),
      body: Center(
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
        title: "Osiągnięcia",
        onLeadingPressed: () => Navigator.pop(context)
      ),
      body: Center(
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
        title: "FAQ",
        onLeadingPressed: () => Navigator.pop(context)
      ),
      body: Center(
        child: Text(
          "Najczęściej zadawane pytania",
          style: TextStyle(fontSize: 20),
          
        ),
      ),
    );
  }
}
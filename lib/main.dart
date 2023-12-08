import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wielcy_polacy/pages/menu_page.dart';
import 'package:wielcy_polacy/pages/profile_page.dart';
import 'package:wielcy_polacy/pages/quiz_page.dart';
import 'package:wielcy_polacy/provider/google_sign_in.dart';
import 'pages/welcome_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/main_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: "Wielcy Polacy",
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomePage(),
          '/login_page': (context) => const LoginPage(),
          '/register_page': (context) => const RegisterPage(),
          '/main_page': (context) => MainPage(),
          '/menu_page': (context) => const MenuPage(),
          '/quiz_page': (context) => QuizPage(),
          '/profile_page': (context) => ProfilePage(),
        },
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(184, 158, 119, 1),
            background: const Color.fromRGBO(242, 238, 232, 1),
            brightness: Brightness.light,
          ),
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ));
}

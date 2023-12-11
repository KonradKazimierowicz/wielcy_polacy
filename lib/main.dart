import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wielcy_polacy/pages/menu_page.dart';
import 'package:wielcy_polacy/page_navigator.dart';
import 'package:wielcy_polacy/pages/profile_page.dart';
import 'package:wielcy_polacy/pages/quiz_page.dart';
import 'package:wielcy_polacy/provider/google_sign_in.dart';
import 'pages/starting/welcome_page.dart';
import 'pages/starting/login_page.dart';
import 'pages/starting/register_page.dart';
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
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: FirebaseAuth.instance.authStateChanges().first,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          
          return CircularProgressIndicator(); 
        } else {
          if (snapshot.hasData && snapshot.data != null) {
            
            return ChangeNotifierProvider(
              create: (context) => GoogleSignInProvider(),
              child: MaterialApp(
                title: "Wielcy Polacy",
                initialRoute: '/navbar',
                routes: {
                  '/navbar': (context) => NavBar(),
                  '/login_page': (context) => const LoginPage(),
                  '/register_page': (context) => const RegisterPage(),
                  '/main_page': (context) => const MainPage(),
                  '/menu_page': (context) => const MenuPage(),
                  '/quiz_page': (context) => const QuizPage(),
                  '/profile_page': (context) => const ProfilePage(),
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
              ),
            );
          } else {
            
            return ChangeNotifierProvider(
              create: (context) => GoogleSignInProvider(),
              child: MaterialApp(
                title: "Wielcy Polacy",
                initialRoute: '/',
                routes: {
                  '/': (context) => const WelcomePage(),
                  '/login_page': (context) => const LoginPage(),
                  '/register_page': (context) => const RegisterPage(),
                  '/main_page': (context) => const MainPage(),
                  '/menu_page': (context) => const MenuPage(),
                  '/quiz_page': (context) => const QuizPage(),
                  '/profile_page': (context) => const ProfilePage(),
                  '/navbar': (context) => NavBar(), // Add this line
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
              ),
            );
          }
        }
      },
    );
  }
}

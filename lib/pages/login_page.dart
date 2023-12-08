import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wielcy_polacy/components/textField.dart';
import 'package:wielcy_polacy/components/mainButton.dart';

import '../Files/auth.dart';
import '../provider/google_sign_in.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'img/login.png',
              width: double.infinity,
              height: 300,
            ),
            const SizedBox(height: 50),
            const Text(
              "Miło widzieć cię ponownie!",
              style: TextStyle(
                color: Color.fromRGBO(43, 42, 38,1),
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
             const Text(
              "Zaloguj się aby kontynuować.",
              style: TextStyle(
                color: Color.fromRGBO(43, 42, 38,1),
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(
              controller: usernameController,
              hintText: "email",
              obscureText: false,
            ),
            const SizedBox(height: 15),
            MyTextField(
              controller: passwordController,
              hintText: "hasło",
              obscureText: true,
            ),
            const SizedBox(height: 30),
            MainButton(text: "Zaloguj się",onPressed: () async {
                  await signIn(context, usernameController.text,
                      passwordController.text);
                },),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Nie masz jeszcze konta?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 70, 69, 69),
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  child: const Text(
                    "Zarejestruj się",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  onPressed: () =>
                      {Navigator.pushNamed(context, "/register_page")},
                )
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Or continue with",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                     final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                      provider.googleLogin();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Image.asset(
                      "img/google.png",
                      height: 50,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

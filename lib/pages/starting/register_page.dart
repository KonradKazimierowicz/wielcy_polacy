import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wielcy_polacy/components/textField.dart';
import 'package:wielcy_polacy/components/mainButton.dart';
import 'package:wielcy_polacy/provider/google_sign_in.dart';

import '../../Files/auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'img/register.png',
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.3,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Miło cię poznać!",
                  style: TextStyle(
                    color: Color.fromRGBO(43, 42, 38, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Załóż swoje konto.",
                  style: TextStyle(
                    color: Color.fromRGBO(43, 42, 38, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: usernameController,
                  hintText: "email",
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: "hasło",
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  controller: repeatPasswordController,
                  hintText: "powtórz hasło",
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                MainButton(
                  text: "Zarejestruj się",
                  onPressed: () async {
                    await signUp(
                      context,
                      usernameController.text,
                      passwordController.text,
                      repeatPasswordController.text,
                    );
                  },
                ),
                const SizedBox(height: 20),
                const Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Lub kontynuuj przez",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final provider =
                            Provider.of<GoogleSignInProvider>(context, listen: false);
                        provider.googleLogin(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Image.asset(
                          "img/google.png",
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Masz już konto?"),
                    TextButton(
                      child: const Text(
                        "Zaloguj się",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () =>
                          {Navigator.pushNamed(context, "/login_page")},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

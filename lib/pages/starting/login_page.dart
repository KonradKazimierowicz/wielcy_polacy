import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wielcy_polacy/components/textField.dart';
import 'package:wielcy_polacy/components/mainButton.dart';

import '../../Files/auth.dart';
import '../../provider/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Image.asset(
                        'img/login.png',
                        width: constraints.maxWidth * 0.8,
                        height: constraints.maxHeight * 0.3,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Miło widzieć cię ponownie!",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Zaloguj się aby kontynuować.",
                        style: TextStyle(
                          color: Color.fromRGBO(43, 42, 38, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
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
                      const SizedBox(height: 20),
                      MainButton(
                        text: "Zaloguj się",
                        onPressed: () async {
                          await signIn(
                              context, usernameController.text, passwordController.text);
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Nie masz jeszcze konta?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 70, 69, 69),
                              fontSize: 12,
                            ),
                          ),
                          TextButton(
                            child: const Text(
                              "Zarejestruj się",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            onPressed: () =>
                                {Navigator.pushNamed(context, "/register_page")},
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Or continue with",
                        style: TextStyle(
                          fontSize: 12,
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
                                height: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

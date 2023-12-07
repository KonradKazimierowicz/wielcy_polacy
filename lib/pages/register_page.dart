import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/textField.dart';
import 'package:wielcy_polacy/components/mainButton.dart';

import '../Files/auth.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'img/register.png',
                width: double.infinity,
                height: 300,
              ),
              const SizedBox(height: 10),
              const Text(
                "Miło cię poznać!",
                style: TextStyle(
                  color: Color.fromRGBO(43, 42, 38,1),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
               const Text(
                "Załóż swoje konto.",
                style: TextStyle(
                  color: Color.fromRGBO(43, 42, 38,1),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              MyTextField(
                  controller: usernameController,
                  hintText: "email",
                  obscureText: false),
              const SizedBox(height: 15),
              MyTextField(
                  controller: passwordController,
                  hintText: "hasło",
                  obscureText: true),
              const SizedBox(height: 15),
              MyTextField(
                  controller: repeatPasswordController,
                  hintText: "powtórz hasło",
                  obscureText: true),
              const SizedBox(height: 30),
              MainButton(text: "Zarejestruj się",onPressed: () async {
                    await signUp(context, usernameController.text,
                        passwordController.text, repeatPasswordController.text);
                  },),
              
              const SizedBox(height: 30),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Lub kontynuuj przez",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Image.asset(
                        "img/google.png",
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
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
    );
  }
}

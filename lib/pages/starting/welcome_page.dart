import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/mainButton.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'img/welcome.png',
                width: double.infinity,
                height: 400,
              ),
              const SizedBox(height: 50),
              const Text(
                "Witaj",
                style: TextStyle(
                  fontSize: 44,
                  color: Color.fromRGBO(43, 42, 38,1),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 8.0, 50.0, 8.0),
                  child: Text(
                    "Zacznij korzystać już teraz i dowiedz się więcej o historii wybitnych Polaków.",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(43, 42, 38,1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              MainButton(text: "Zarejestruj się", onPressed: () => {Navigator.pushNamed(context, '/register_page')}),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                width: 150,
                child: TextButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, "/login_page"),
                  },
                  child: const Text(
                    "Zaloguj się",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromRGBO(43, 42, 38,1)
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

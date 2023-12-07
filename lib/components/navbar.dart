import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(242, 238, 232, 1),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromRGBO(242, 238, 232, 1),
            color: Color.fromRGBO(43, 42, 38, 1),
            padding: EdgeInsets.all(16),
            gap: 8,
        
            tabs: [
              GButton(
                icon: Icons.menu_outlined,
                text: "Menu",
              ),
              GButton(
                icon: Icons.home_outlined,
                text: "Główna",
              ),
              GButton(
                icon: Icons.quiz_outlined,
                text: "Quiz",
              ),
              GButton(
                icon: Icons.person_outlined,
                text: "Profil",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

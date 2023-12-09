import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:wielcy_polacy/pages/menu_page.dart';
import 'package:wielcy_polacy/pages/profile_page.dart';
import 'package:wielcy_polacy/pages/quiz_page.dart';
import 'pages/main_page.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  PersistentTabController _controller = PersistentTabController();

  List<Widget> _widgetOptions = <Widget>[
    MenuPage(),
    MainPage(),
    QuizPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: PersistentTabView(
      context,
      controller: _controller,
      screens: _widgetOptions,
      backgroundColor: Color.fromRGBO(242, 238, 232, 1),
      navBarHeight: 80,
      navBarStyle: NavBarStyle.style1,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -1),
            )
          ]),
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.menu_outlined),
          title: "Menu",
          textStyle: TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 13 ),
          activeColorPrimary: Color.fromRGBO(43, 42, 38, 1),
          inactiveColorPrimary: Color.fromRGBO(43, 42, 38, 0.6),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_outlined),
          title: "Główna",
          textStyle: TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 13 ),
          activeColorPrimary: Color.fromRGBO(43, 42, 38, 1),
          inactiveColorPrimary: Color.fromRGBO(43, 42, 38, 0.6),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.quiz_outlined),
          title: "Quiz",
          textStyle: TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 13 ),
          activeColorPrimary: Color.fromRGBO(43, 42, 38, 1),
          inactiveColorPrimary: Color.fromRGBO(43, 42, 38, 0.6),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person_outlined),
          title: "Profil",
          textStyle: TextStyle(color: Color.fromRGBO(43, 42, 38, 1), fontSize: 13 ),
          activeColorPrimary: Color.fromRGBO(43, 42, 38, 1),
          inactiveColorPrimary: Color.fromRGBO(43, 42, 38, 0.6),
        ),
      ],
      onItemSelected: (index) {
        setState(() {
          _controller.index = index;
        });
      },
    ));
  }
}

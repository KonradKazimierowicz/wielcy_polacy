import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wielcy_polacy/components/mainButton.dart';
import 'package:wielcy_polacy/components/navbar.dart';
import 'package:wielcy_polacy/pages/characters/description/czochralski_desc.dart';


class Czochralski extends StatelessWidget {
  const Czochralski({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: center icon and text vertical
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), 
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(184, 158, 119, 1), 
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0), 
              bottomRight: Radius.circular(20.0), 
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true, 
            title: const Text(
              "Jan Czochralski",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold, 
              ),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white, 
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              
            ),
          ),
        ),
      ),
      body: SafeArea(
        
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Stack(
              children: [
                Container(
                  
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'img/czochralski.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 10),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Center(
                child: Text(
                  "Polski chemik, metaloznawca. Wynalazca między innymi powszechnie stosowanej metody otrzymywania monokryształów krzemu, będącej podstawą procesu produkcji układów scalonych. Najczęściej cytowany polski uczony, radca Izby Przemysłowo-Handlowej w Warszawie",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 10),
            MainButton(text: "Dowiedz się więcej",onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CzochralskiDesc()));
            },),
            //const NavBar(),
          ],
        ),
      ),
    );
  }
}

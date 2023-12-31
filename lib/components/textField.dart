import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
 
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });
 

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                width: 700,
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    // enabledBorder: const OutlineInputBorder(
                    //    borderSide: BorderSide(color: Colors.white),
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400)
                    ),
                    fillColor: const Color.fromRGBO(224, 217, 209,1),
                    filled: true,
                    hintText: hintText,
                    
                  ),
                ),
              ),
            );
  }
}
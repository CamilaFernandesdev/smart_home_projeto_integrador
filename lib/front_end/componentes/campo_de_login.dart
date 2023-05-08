import 'package:flutter/material.dart';

// Create function for input login

class CampoLogin extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

  const CampoLogin(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        // nome que aparece na caixinha
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70), // BorderSide
            ), // OutlineInputBorder
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70), // BorderSide
            ), // OutlineInputBorder
            fillColor: Colors.white70,
            filled: true,
            hintText: hintText), // InputDecoration,
      ), // TextField
    ); // Padding
  }
}
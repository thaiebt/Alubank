import 'package:alubank/screens/home.dart';
import 'package:alubank/themes/my_theme.dart';
import 'package:flutter/material.dart';

class Alubank extends StatelessWidget {
  const Alubank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alubank",
      theme: MyTheme,
      home: const Home(),
    );
  }
}
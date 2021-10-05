import 'package:decibel/menupage.dart';
import 'package:flutter/material.dart';
import 'package:decibel/surroundings.dart';
import 'package:decibel/animals.dart';

void main() {
  runApp(Decibel());
}

class Decibel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Decibel',
      initialRoute: MenuPage.id,
      routes: {
        MenuPage.id: (context) => MenuPage(),
        Surroundings.id: (context) => Surroundings(),
        Animals.id: (context) => Animals(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:decibel/surroundings.dart';
import 'package:decibel/animals.dart';

class MenuPage extends StatelessWidget {
  static String id = 'menu_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Choose a sound board',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Surroundings.id);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  width: 350,
                  image: AssetImage('assets/images/surroundings.png'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Animals.id);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  width: 350,
                  image: AssetImage('assets/images/animals.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

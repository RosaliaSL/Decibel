import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Surroundings extends StatelessWidget {
  static String id = 'surroundings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Surroundings',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    final player = AudioCache();
                    player.play('beach.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/beach.png'),
                      height: 160.0,
                      width: 160.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    final player = AudioCache();
                    player.play('Crickets.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/forest.png'),
                      height: 160.0,
                      width: 160.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    final player = AudioCache();
                    player.play('city.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/city.png'),
                      height: 160.0,
                      width: 160.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    final player = AudioCache();
                    player.play('rain3sec.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/rain.png'),
                      height: 160.0,
                      width: 160.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Animals extends StatelessWidget {
  static String id = 'animals';

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
                'Animals',
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
                    player.play('dog.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/dog.png'),
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
                    player.play('cat.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/cat.png'),
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
                    player.play('lion.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/lion.png'),
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
                    player.play('duck.mp3');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage('assets/images/duck.png'),
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

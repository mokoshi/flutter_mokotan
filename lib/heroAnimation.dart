import 'package:flutter/material.dart';
import 'package:flutter_mokotan/photoHero.dart';

class HeroAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    var timeDilation = 5.0; // 1.0 means normal animation speed.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: PhotoHero(
          photo: 'images/umaru.png',
          width: 100.0,
          onTap: () {
            Navigator.of(context).pushNamed("/umaru");
          },
        ),
      ),
    );
  }
}

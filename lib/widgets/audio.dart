import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DrumPage extends StatelessWidget {
  void sesiCal(String ses) {
    oynatici.play(AssetSource('$ses.wav'));
  }

  final oynatici = AudioPlayer();
  final urlImage = 'assets/images/rob1.png';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildTextButton('ses/sondigot'),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton(String a) {
    return TextButton(
      onPressed: () {
        sesiCal(a);
      },
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          border: Border.all(color: Colors.grey.shade300, width: 4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(0.0, 2.0),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Image.asset(
          urlImage,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

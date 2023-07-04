import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/robot_page.dart';
import 'package:meta_ozce_0/Screens/Welcome/welcome_screen.dart';

import 'package:meta_ozce_0/Screens/WelcomeRobot/components/background.dart';
import 'package:meta_ozce_0/components/rounded_button.dart';

import 'package:meta_ozce_0/widgets/audio.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //provide us total hight and width of our screen

    final urlImage = 'assets/images/button/arrow.png';
    return Scaffold(
      appBar: AppBar(
        title: Text('META OZCE'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "METAOZCE'YE HOŞ GELDİNİZ",
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 28,
            //       color: Colors.blue),
            // ),
            SizedBox(height: 60),
            Container(
              child: DrumPage(),
            ),
            SizedBox(height: 60),
            Container(
              height: 80,
              child: Center(
                child: RoundedButton(
                  text: "HADİ BAŞLAYALIM",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomeScreen();
                        },
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

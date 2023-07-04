import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Profil/components/profile_menu.dart';
import 'package:meta_ozce_0/Screens/Profil/components/profile_pic.dart';

import '../../../const/background.dart';
import '../../Otel_Konaklayan/feedback_page.dart';
import '../../Welcome/welcome_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'PROFIL',
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            ProfileMenu(
              text: "Hesap",
              icon: Icon(
                Icons.person,
              ),
              press: () => {},
            ),
            ProfileMenu(
              text: "Bildirimler",
              icon: Icon(Icons.notifications),
              press: () {},
            ),
            ProfileMenu(
              text: "Ayarlar",
              icon: Icon(Icons.settings),
              press: () {},
            ),
            ProfileMenu(
              text: "Geri Dönüş",
              icon: Icon(Icons.feedback),
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FeedbackKonak())),
            ),
            ProfileMenu(
              text: "Çıkış Yap",
              icon: Icon(Icons.logout),
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen())),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/ProfilBakan/components/profile_menu.dart';
import 'package:meta_ozce_0/Screens/ProfilBakan/components/profile_pic.dart';

import '../../../const/background.dart';
import '../../Otel_Konaklayan/feedback_page.dart';
import '../../Otel_Konaklayan/feedback_page_bakan.dart';
import '../../Welcome/welcome_screen.dart';

class BodyBakan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      title: "PROFIL",
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePicBakan(),
            SizedBox(height: 20),
            ProfileMenuBakan(
              text: "Hesap",
              icon: Icon(
                Icons.person,
              ),
              press: () => {},
            ),
            ProfileMenuBakan(
              text: "Bildirimler",
              icon: Icon(Icons.notifications),
              press: () {},
            ),
            ProfileMenuBakan(
              text: "Ayarlar",
              icon: Icon(Icons.settings),
              press: () {},
            ),
            ProfileMenuBakan(
              text: "Geri Dönüş",
              icon: Icon(Icons.feedback),
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FeedbackBakan())),
            ),
            ProfileMenuBakan(
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

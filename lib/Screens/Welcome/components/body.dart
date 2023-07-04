import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/QrCode/qrCode_screen.dart';
import 'package:meta_ozce_0/Screens/Welcome/components/background.dart';
import 'package:meta_ozce_0/const/constant.dart';

import 'package:meta_ozce_0/widgets/navigation_bakan1.dart';

import '../../../components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //provide us total hight and width of our screen

    const urlImage = "assets/images/welcome.png";
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            const Text(
              "METAOZCE'YE HOŞ GELDİNİZ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: myColor1),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              urlImage,
              fit: BoxFit.fill,
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.07),
            RoundedButton(
              text: "OTEL KULLANICISI GİRİŞİ",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const QrCodeScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "MİSAFİR KULLANICI",
              color: kPrimaryLightColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NavigationBakan1();
                    },
                  ),
                );
              },
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

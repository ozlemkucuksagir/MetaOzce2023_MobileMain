import 'package:flutter/material.dart';

import 'package:meta_ozce_0/components/rounded_button.dart';

import 'package:meta_ozce_0/widgets/navigation_bakan1.dart';
import 'package:meta_ozce_0/widgets/navigation_konak.dart';

import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../const/background.dart';
import '../../../const/constant.dart';

class Body extends StatelessWidget {
  final urlImage = "assets/images/rob3.png";
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      title: 'GİRİŞ YAP',
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Image.asset(
              urlImage,
              height: size.height * 0.38,
            ),
            RoundedInputField(
              hintText: "Oda Numarası",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "GİRİŞ YAP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NavigationKonak();
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Parolayı unuttuysanız resepsiyondan alabilirsiniz.",
                    style: TextStyle(color: myColor1, fontSize: 13),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "(RESEPSİYONU ARA)",
                  style: TextStyle(
                      color: myColor1,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

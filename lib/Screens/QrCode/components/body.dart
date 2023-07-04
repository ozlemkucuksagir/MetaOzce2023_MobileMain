import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/QrCode/components/second.dart';

import '../../../components/rounded_button.dart';
import '../../../const/constant.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final urlImage = "assets/images/qrCode.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '  QR / Barcode Scanner',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: myColor1),
            ),
            const SizedBox(height: 100),
            Image.asset(
              urlImage,
              height: 300,
            ),
            const SizedBox(height: 100),
            RoundedButton(
              text: "QR taratmak için basın",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Second();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

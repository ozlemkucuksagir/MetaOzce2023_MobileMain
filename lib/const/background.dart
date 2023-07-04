import 'package:flutter/material.dart';
import 'package:meta_ozce_0/const/constant.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String? title;
  const Background({
    Key? key,
    required this.child,
    required this.title,
    // this.topImage = "assets/logo/logodhp2.PNG",
    this.bottomImage = "assets/images/image4.png",
  }) : super(key: key);

  final String bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '${title}',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: myColor1,
      ),
      // bottomNavigationBar:
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1,
            child: Image.asset(
              bottomImage,
            ),
            width: 840,
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}

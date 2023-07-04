import 'package:meta_ozce_0/const/background.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'components/main_form.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      title: "META OZCE",
      child: MainForm(),
    );
  }
}

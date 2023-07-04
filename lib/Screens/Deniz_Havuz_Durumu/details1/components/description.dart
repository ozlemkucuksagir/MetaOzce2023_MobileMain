import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/constants.dart';
import 'package:meta_ozce_0/models/Denizler.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.deniz,
  }) : super(key: key);

  final Deniz deniz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        "${deniz.description1}\n${deniz.description2}\n${deniz.description3}",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}

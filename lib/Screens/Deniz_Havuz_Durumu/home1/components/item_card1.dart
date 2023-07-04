import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/constants.dart';
import 'package:meta_ozce_0/models/Denizler.dart';

class ItemCard1 extends StatelessWidget {
  final Deniz deniz;
  final VoidCallback press;
  const ItemCard1({
    required this.deniz,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Icon(
          //   Icons.lightbulb,
          //   color: Colors.green,
          // ),
          // SizedBox(height: 5),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(width: 1)),
              child: Hero(
                tag: "${deniz.id}",
                child: Image.asset(deniz.image),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              deniz.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "${deniz.availability}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/constants.dart';
import 'package:meta_ozce_0/models/Denizler.dart';

class DenizTitleWithImage extends StatelessWidget {
  const DenizTitleWithImage({
    required this.deniz,
  });

  final Deniz deniz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Denizler",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            deniz.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Kullanım Durumu\n"),
                    TextSpan(
                      text: "${deniz.availability}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${deniz.id}",
                  child: Image.asset(
                    deniz.image,
                    height: 206,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

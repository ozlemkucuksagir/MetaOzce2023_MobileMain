import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/constants.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/details1/details1_screeen.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/home1/components/categories1.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/home1/components/item_card1.dart';
import 'package:meta_ozce_0/models/Denizler.dart';

import '../../../../const/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'HAVUZLAR ve DENİZLER',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Categories1(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: denizler.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.95,
                  ),
                  itemBuilder: (context, index) => ItemCard1(
                      deniz: denizler[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details1Screen(
                                    deniz: denizler[index],
                                  ))))),
            ),
          ),
        ],
      ),
    );
  }
}

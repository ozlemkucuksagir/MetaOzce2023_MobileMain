import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/constants.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/details/components/havuz_title_with_image.dart';
import 'package:meta_ozce_0/models/Havuzlar.dart';

import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({required this.product});
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.06,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      //ColorAndSize(product: product),
                      //SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      //SizedBox(height: kDefaultPaddin / 2),
                      //CounterWithFavBtn(),

                      //AddToCart(product: product)
                    ],
                  ),
                ),
                HavuzTitleWithImage(
                  product: product,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/constants.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/details1/components/color_and_size.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/details1/components/deniz_title_with_image.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/details1/components/description.dart';
import 'package:meta_ozce_0/models/Denizler.dart';

class Body extends StatelessWidget {
  final Deniz deniz;

  const Body({required this.deniz});
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
                      ColorAndSize(deniz: deniz),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(deniz: deniz),
                      SizedBox(height: kDefaultPaddin / 2),
                      //CounterWithFavBtn(),

                      //AddToCart(product: product)
                    ],
                  ),
                ),
                DenizTitleWithImage(
                  deniz: deniz,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    "assets/images/robot.png",
                    height: 400,
                    alignment: Alignment.centerRight,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/details1/components/body.dart';
import 'package:meta_ozce_0/models/Denizler.dart';

class Details1Screen extends StatelessWidget {
  final Deniz deniz;

  const Details1Screen({required this.deniz});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: deniz.color,
      appBar: buildAppBar(context),
      body: Body(deniz: deniz),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: deniz.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      // actions: <Widget>[
      //   IconButton(
      //     icon: Icon(Icons.search),
      //     onPressed: () {},
      //   ),
      //   IconButton(
      //     icon: Icon(Icons.card_travel),
      //     onPressed: () {},
      //   ),
      //   SizedBox(width: kDefaultPaddin / 2)
      // ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Deniz>('deniz', deniz));
  }
}

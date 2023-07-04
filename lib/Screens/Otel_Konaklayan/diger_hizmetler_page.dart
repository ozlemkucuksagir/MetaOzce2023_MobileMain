import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/home/home_screen.dart';
import 'package:meta_ozce_0/Screens/Oda_Kontrol/oda_kontrol.dart';

class DigerHizmetlerPage extends StatelessWidget {
  final int? index__;
  DigerHizmetlerPage({this.index__});

  @override
  Widget build(BuildContext context) {
    return (index__ == 6) ? HomeScreen() : OdaKontrol();
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta_ozce_0/widgets/sehir_crousel.dart';

import '../../const/background.dart';

class HomeScreenBakan extends StatefulWidget {
  @override
  _HomeScreenBakanState createState() => _HomeScreenBakanState();
}

class _HomeScreenBakanState extends State<HomeScreenBakan> {
  final int _selectedIndex = 0;
  final int _currentTab = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'ANA SAYFA',
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: _icons
            //       .asMap()
            //       .entries
            //       .map(
            //         (MapEntry map) => _buildIcon(map.key),
            //       )
            //       .toList(),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      border: InputBorder.none,
                      hintText: "Sana en uygun oteli keşfet!"),
                ),
              ),
            ),
            const SizedBox(height: 35.0),
            Sehir(),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meta_ozce_0/widgets/category_card.dart';

class HomeScreenKonak extends StatefulWidget {
  @override
  _HomeScreenKonakState createState() => _HomeScreenKonakState();
}

class _HomeScreenKonakState extends State<HomeScreenKonak> {
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkThema'
        : 'LightTema';
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Container(
                // Here the height of the container is 45% of our total height
                height: 210,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('assets/images/logo/logo.png'),
                  ),
                ),
              ),
              Divider(height: 15, color: Colors.black45),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 260,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.00,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        KategoriBas(
                          title: 'Menü',
                          imageUrl: 'assets/images/kategori/menu.png',
                          id: 0,
                        ),
                        KategoriBas(
                          title: 'Etkinlikler',
                          imageUrl: 'assets/images/kategori/activity.png',
                          id: 1,
                        ),
                        KategoriBas(
                          title: 'Oda Kontrol',
                          imageUrl: 'assets/images/kategori/odakontrol.png',
                          id: 5,
                        ),
                        KategoriBas(
                          title: 'Havuz/Deniz',
                          imageUrl: 'assets/images/kategori/denizdurumu.png',
                          id: 6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

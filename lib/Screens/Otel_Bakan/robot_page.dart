import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/favoriler_page.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/home_screen_bakan.dart';
import 'package:meta_ozce_0/const/constant.dart';
import 'package:meta_ozce_0/widgets/navigation_bakan1.dart';

import '../../const/background.dart';
import '../ProfilBakan/profil_page.dart';

class RobotPageBakan extends StatefulWidget {
  @override
  _RobotPageBakanState createState() => _RobotPageBakanState();
}

class _RobotPageBakanState extends State<RobotPageBakan> {
  final int _selectedIndex = 0;

  String soru = "";
  List<String> homePage = [
    'popüler tatil yerleri',
    'oteller',
    'rezervasyon',
    'konaklama',
    'anasayfa',
    'oda',
    'fiyat',
    'otel arama',
    'fırsatlar',
    'arama',
    'giriş tarihi',
    'çıkış tarihi',
    'yetişkin sayısı',
    'çocuk sayısı',
    'otel detayları',
    'otel özellikleri',
    'puanlar',
    'fiyat bilgisi',
    'rezervasyon yap',
    'sepete ekle',
    'benzer oteller',
    'gezilecek yerler',
    'etkinlikler',
    'populer tatil yerleri',
    'oteller',
    'rezervasyon',
    'konaklama',
    'anasayfa',
    'oda',
    'fiyat',
    'otel arama',
    'firsatlar',
    'arama',
    'giris tarihi',
    'cikis tarihi',
    'yetiskin sayisi',
    'cocuk sayisi',
    'otel detaylari',
    'otel ozellikleri',
    'puanlar',
    'fiyat bilgisi',
    'rezervasyon yap',
    'sepete ekle',
    'benzer oteller',
    'gezilecek yerler',
    'etkinlikler'
  ];
  List<String> profilePage = [
    'profil',
    'sayfa',
    'kullanıcı adı',
    'fotoğraf',
    'durum',
    'hakkında',
    'kullanıcı bilgileri',
    'gizlilik',
    'ayarlar',
    'profil',
    'sayfa',
    'kullanici adi',
    'fotograf',
    'durum',
    'hakkinda',
    'kullanici bilgileri',
    'gizlilik',
    'ayarlar'
  ];

  List<String> favorilerPage = [
    'favoriler',
    'favori oteller',
    'sil',
    'tümünü sil',
  ];

  int counter = 0;

  bool fikrimYokHome = true;
  bool fikrimYokFavoriler = true;
  bool fikrimYokProfil = true;

  findSolution() {
    fikrimYokHome = true;
    fikrimYokProfil = true;
    fikrimYokFavoriler = true;
    counter = 0;

    //menu için
    for (int i = 0; i < homePage.length; i++) {
      if (soru.contains(homePage[i])) {
        print("a");
        fikrimYokHome =
            false; // Eğer soru, bir menü sayfasının adını içeriyorsa, "fikrimYok" değişkeni "false" yapılır.
      }
    }

    if (fikrimYokHome == false) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          counter++;
          if (counter >= 3) {
            timer.cancel();
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NavigationBakan1(
                    index: 0,
                  );
                },
              ),
            );
          }
        });
        if (counter < 3) {
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: SpinKitCubeGrid(
                    color: myColor1,
                  ),
                );
              });
        }
      });
    }

    //favorilerPage için
    for (int i = 0; i < favorilerPage.length; i++) {
      if (soru.contains(favorilerPage[i])) {
        print("etkinlik var");
        fikrimYokFavoriler =
            false; // Eğer soru, bir menü sayfasının adını içeriyorsa, "fikrimYok" değişkeni "false" yapılır.
      }
    }
    if (fikrimYokFavoriler == false) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          counter++;
          if (counter >= 3) {
            timer.cancel();
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NavigationBakan1(
                    index: 1,
                  );
                  ;
                },
              ),
            );
          }
        });
        if (counter < 3) {
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: SpinKitCubeGrid(
                    color: myColor1,
                  ),
                );
              });
        }
      });
    }
    //profilePage için
    for (int i = 0; i < profilePage.length; i++) {
      if (soru.contains(profilePage[i])) {
        print("etkinlik var");
        fikrimYokProfil =
            false; // Eğer soru, bir menü sayfasının adını içeriyorsa, "fikrimYok" değişkeni "false" yapılır.
      }
    }
    if (fikrimYokProfil == false) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          counter++;
          if (counter >= 3) {
            timer.cancel();
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NavigationBakan1(
                    index: 3,
                  );
                  ;
                },
              ),
            );
          }
        });
        if (counter < 3) {
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: SpinKitCubeGrid(
                    color: myColor1,
                  ),
                );
              });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'DIGOT',
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 120,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  image: const DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      'assets/images/rob1.png',
                    ),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade100,
                      offset: const Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              // const Text(
              //   'Size nasıl yardımcı olabilirim?',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 15,
              //   ),
              // ),

              Divider(
                height: 50,
                color: Colors.grey,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Otellere bakmak istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 0,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Favorilere eklediğim otelleri görmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 1,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Profilime gitmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 3,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Popüler otelleri görmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 0,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Stack(children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                child: const Center(
                                  child: Text(
                                    'Favorilerimden otel silmek istiyorum.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(8.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 15),
                                ),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavigationBakan1(
                                            index: 1,
                                          )),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              soru = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              fontSize: 11,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            hintText: 'Başka bir sorum var...',
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              findSolution();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                          child: Text("Sor"))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

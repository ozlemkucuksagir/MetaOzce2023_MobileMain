import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/home/home_screen.dart';
import 'package:meta_ozce_0/Screens/Etkinlikler/etkinlikler_screen.dart';
import 'package:meta_ozce_0/Screens/Menu/menu_screen.dart';
import 'package:meta_ozce_0/const/constant.dart';
import 'package:meta_ozce_0/widgets/navigation_konak.dart';
import 'dart:async';
import '../../const/background.dart';
import '../Profil/profil_page.dart';

class RobotPageKonak extends StatefulWidget {
  @override
  _RobotPageKonakState createState() => _RobotPageKonakState();
}

List<String> menuPage = [
  'acıktım',
  'aciktim',
  'susadım',
  'susadim',
  'öğle yemeği',
  'ogle yemegi',
  'canım tatlı çekiyor',
  'canim tatli cekiyor',
  'yemek',
  'barbecue',
  'pizza',
  'hamburger',
  'taco',
  'sushi',
  'makarna',
  'çorba',
  'lahmacun',
  'çiğ köfte',
  'kebap',
  'köfte',
  'döner',
  'balık',
  'et',
  'tavuk',
  'vejetaryen',
  'vegan',
  'organik',
  'fast food',
  'kahvaltı',
  'akşam yemeği',
  'öğle yemeği',
  'brunch',
  'kahve',
  'çay',
  'alkolsüz içecekler',
  'alkollü içecekler',
  'şarap',
  'bira',
  'kokteyl',
  'viski',
  'rom',
  'votka',
  'tekila',
  'likör',
  'şarap tadımı',
  'bira tadımı',
  'içki tadımı',
  'yemek pişirme',
  'pastacılık',
  'çikolata yapımı',
  'şarap yapımı',
  'bira yapımı',
  'kahve yapımı',
  'barista',
  'kahve tadımı'
];
List<String> etkinlikPage = [
  'dans',
  'eglence',
  'eğlence',
  'müzik',
  'muzik',
  'spor',
  'voleybol',
  'tenis',
  'futbol',
  'yoga',
  'pilates',
  'koşu',
  'yürüyüş',
  'bisiklet',
  'paintball',
  'rafting',
  'kayak',
  'snowboard',
  'kamp',
  'balık tutma',
  'sörf',
  'dalış',
  'yüzme',
  'basketbol',
  'hentbol',
  'atletizm',
  'dağcılık',
  'tırmanış',
  'okçuluk'
      'bar',
  'parti',
  'toplantı',
  'kurs',
  'atölye',
  'seminer',
  'konferans'
];
List<String> denizHavuzPage = [
  "denize girmek istiyorum",
  "havuz kloru ne kadar",
  "havuz kaç metre",
  "deniz suyu sıcaklığı",
  "deniz suyu sicakligi",
  "havuz temizliği nasıl yapılır",
  "denizde dalga var mı",
  "havuzda şezlong var mı",
  "deniz kenarında restoran var mı",
  "havuzda çocuk havuzu var mı",
  "denizde güvenli yüzme alanları nerede",
  "havuzda havlu temin ediliyor mu",
  "denizde su sporları yapabilir miyim",
  "havuzda spa hizmeti var mı",
  "denizde balık çekebilir miyim",
  "havuzda havuz bar var mı",
  "deniz kirlilik oranı ne kadar",
  "havuzda akşam ışıklandırması var mı",
  "denizde şnorkelle dalış yapabilir miyim",
  "havuzda aquapark var mı",
  "denizde tekne turu yapabilir miyim",
  "havuzda jakuzi var mı",
  "denizde güneşlenme alanları nerede",
  "havuzda su kaydırağı var mı",
  "denizde yunus turu yapabilir miyim",
  "havuzda oyun alanı var mı",
  "denizde kano-kayak yapabilir miyim",
  "havuzda çocuk oyun alanı var mı"
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
int counter = 0;
bool fikrimYokProfil = true;
bool fikrimYokMenu = true;
bool fikrimYokEtkinlik = true;
bool fikrimYokDenizHavuz = true;

class _RobotPageKonakState extends State<RobotPageKonak> {
  int _selectedIndex = 0;
  String soru = "";

  findSolution() {
    fikrimYokMenu = true;
    fikrimYokDenizHavuz = true;
    fikrimYokEtkinlik = true;
    fikrimYokProfil = true;
    counter = 0;

    //menu için
    for (int i = 0; i < menuPage.length; i++) {
      if (soru.contains(menuPage[i])) {
        print("a");
        fikrimYokMenu =
            false; // Eğer soru, bir menü sayfasının adını içeriyorsa, "fikrimYok" değişkeni "false" yapılır.
      }
    }

    if (fikrimYokMenu == false) {
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
                  return MenuScreen();
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
                  return ProfileScreen();
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
    //etkinlik için
    for (int i = 0; i < etkinlikPage.length; i++) {
      if (soru.contains(etkinlikPage[i])) {
        print("etkinlik var");
        fikrimYokEtkinlik =
            false; // Eğer soru, bir menü sayfasının adını içeriyorsa, "fikrimYok" değişkeni "false" yapılır.
      }
    }
    if (fikrimYokEtkinlik == false) {
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
                  return EtkinliklerScreen();
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

    //deniz için
    for (int i = 0; i < denizHavuzPage.length; i++) {
      if (soru.contains(denizHavuzPage[i])) {
        print("havuz deniz var");
        fikrimYokDenizHavuz =
            false; // Eğer soru, bir menü sayfasının adını içeriyorsa, "fikrimYok" değişkeni "false" yapılır.
      }
    }
    if (fikrimYokDenizHavuz == false) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          counter++;
          if (counter >= 3) {
            timer.cancel();
            if (soru == "havuz kloru ne kadar") {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DIGOT"),
                          ],
                        ),
                        content: Container(
                          width: 300.0,
                          height: 200.0,
                          child: Column(
                            children: [
                              Text(
                                  "Otelimizdeki havuzun klor miktarı düzenli olarak test edilir ve en güvenli ve uygun miktarlarda tutulur.")
                              // buildBirthDate(),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          Container(
                            width: 170,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[900]),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomeScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Deniz ve Havuz Durum sayfasına yönlendir",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ]);
                  });
            } else if (soru == "denize girmek istiyorum") {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DIGOT"),
                          ],
                        ),
                        content: Container(
                          width: 300.0,
                          height: 200.0,
                          child: Column(
                            children: [
                              Text(
                                  "Otelimiz, denize sıfır konumdadır ve özel plajımız misafirlerimize ücretsiz olarak sunulmaktadır. Ayrıca, otelimiz yakınlarında da halka açık plajlar mevcuttur.")
                              // buildBirthDate(),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          Container(
                            width: 170,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[900]),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomeScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Deniz ve Havuz Durum sayfasına yönlendir",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ]);
                  });
            } else if (soru == "deniz suyu sıcaklığı" ||
                soru == "deniz suyu sicakligi") {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DIGOT"),
                          ],
                        ),
                        content: Container(
                          width: 300.0,
                          height: 200.0,
                          child: Column(
                            children: [
                              Text(
                                  "Deniz suyu sıcaklığı, mevsimlere, hava koşullarına ve su derinliğine bağlı olarak değişebilir. Ancak, bölgesel hava durumu raporlarına dayanarak, genellikle 21-22 derece civarında olduğunu söyleyebiliriz.")
                              // buildBirthDate(),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          Container(
                            width: 170,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[900]),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomeScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Deniz ve Havuz Durum sayfasına yönlendir",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ]);
                  });
            } else {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            }
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
    } else {
      Fluttertoast.showToast(
          toastLength: Toast.LENGTH_LONG,
          msg:
              "Konu hakkında bilgim yok, resepsiyonu aramamı istersen 'Resepsiyonu Ara' kutucuğuna basabilirsin.",
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Color.fromARGB(255, 44, 4, 188));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
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
                                      'Akşam yemeğinde ne var?',
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
                                        builder: (context) => MenuScreen()),
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
                                      'Akşam yemeğinde ne var?',
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
                                        builder: (context) => MenuScreen()),
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
                                      'Resepsiyonu ara!',
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
                                        builder: (context) => MenuScreen()),
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
                                      'Profilime gitmek istiyorum',
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
                                        builder: (context) => NavigationKonak(
                                              index: 2,
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
                                      'Anasayfaya gitmek istiyorum.',
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
                                        builder: (context) => NavigationKonak(
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
                                      'Etkinlikleri görmek istiyorum.',
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
                                        builder: (context) =>
                                            EtkinliklerScreen()),
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
      ),
    );
  }
}

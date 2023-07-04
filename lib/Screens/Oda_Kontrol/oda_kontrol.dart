import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../const/background.dart';

class OdaKontrol extends StatefulWidget {
  OdaKontrol({Key? key}) : super(key: key);

  @override
  _OdaKontrolState createState() => _OdaKontrolState();
}

class _OdaKontrolState extends State<OdaKontrol> {
  bool flagElektrik = false;
  bool flagKlima = false;
  bool flagTemizlik = false;
  bool flagOdayaHizmet = false;
  @override
  Widget build(BuildContext context) {
    return Background(
      title: 'ODA KONTROL',
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    ' ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/rob1.png',
                        height: 90,
                        scale: 0.6,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Center(
                      child: Text(
                        '0001 Numaralı Oda Kontrolü',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    const Text(
                      'SERVİSLER',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          onTap: () {
                            setState(() {
                              !flagElektrik
                                  ? Fluttertoast.showToast(
                                      toastLength: Toast.LENGTH_LONG,
                                      msg:
                                          "Elektrik kontrolü için odanıza personel gönderilmiştir.",
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor:
                                          Color.fromARGB(255, 44, 201, 193))
                                  : null;
                              flagElektrik = true;
                            });

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const TemperaturePage(),
                            //   ),
                            // );
                          },
                          icon: 'assets/images/energy.png',
                          title: 'ELEKTRİK KONTROLÜ',
                          color: flagElektrik
                              ? Color.fromARGB(211, 187, 186, 186)
                              : Colors.white,
                          fontColor: flagElektrik ? Colors.white : Colors.grey,
                        ),
                        _cardMenu(
                          onTap: () {
                            setState(() {
                              !flagKlima
                                  ? Fluttertoast.showToast(
                                      toastLength: Toast.LENGTH_LONG,
                                      msg:
                                          "Klima kontrolü için odanıza personel gönderilmiştir.",
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor:
                                          Color.fromARGB(255, 44, 201, 193))
                                  : null;

                              flagKlima = true;
                            });

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const TemperaturePage(),
                            //   ),
                            // );
                          },
                          icon: 'assets/images/temperature.png',
                          title: 'KLİMA KONTROLÜ',
                          color: flagKlima
                              ? Color.fromARGB(211, 187, 186, 186)
                              : Colors.white,
                          fontColor: flagKlima ? Colors.white : Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _cardMenu(
                          onTap: () {
                            setState(() {
                              !flagTemizlik
                                  ? Fluttertoast.showToast(
                                      toastLength: Toast.LENGTH_LONG,
                                      msg:
                                          "Temizlik yapılması için odanıza personel gönderilmiştir.",
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor:
                                          Color.fromARGB(255, 44, 201, 193))
                                  : null;
                              flagTemizlik = true;
                            });

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const TemperaturePage(),
                            //   ),
                            // );
                          },
                          icon: 'assets/images/water.png',
                          title: 'TEMİZLİK',
                          color: flagTemizlik
                              ? Color.fromARGB(211, 187, 186, 186)
                              : Colors.white,
                          fontColor: flagTemizlik ? Colors.white : Colors.grey,
                        ),
                        _cardMenu(
                          onTap: () {
                            setState(() {
                              !flagOdayaHizmet
                                  ? Fluttertoast.showToast(
                                      toastLength: Toast.LENGTH_LONG,
                                      msg:
                                          "Oda hizmeti sağlanması için odanıza personel gönderilmiştir.",
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor:
                                          Color.fromARGB(255, 44, 201, 193))
                                  : null;
                              flagOdayaHizmet = true;
                            });

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const TemperaturePage(),
                            //   ),
                            // );
                          },
                          icon: 'assets/images/entertainment.png',
                          title: 'ODAYA HİZMET',
                          color: flagOdayaHizmet
                              ? Color.fromARGB(211, 187, 186, 186)
                              : Colors.white,
                          fontColor:
                              flagOdayaHizmet ? Colors.white : Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardMenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.grey,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 36,
        ),
        width: 156,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 80,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, color: fontColor),
            )
          ],
        ),
      ),
    );
  }
}

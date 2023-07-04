import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta_ozce_0/Screens/Oda_Kontrol/oda_kontrol.dart';

import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';
import '../../../../const/constant.dart';

class MainForm extends StatefulWidget {
  @override
  State<MainForm> createState() => _MainFormState();
}

class _MainFormState extends State<MainForm> {
  @override
  void initState() {
    super.initState();
  }

  List<Map<String, dynamic>> medCat = [
    {"image": "assets/images/kumlu_plaj.png", "category": "MENÜ"},
    {"image": "assets/images/kumlu_plaj.png", "category": "ETKİNLİKLER"},
    {
      "image": 'assets/images/kategori/odakontrol.png',
      "category": "ODA KONTROL"
    },
    {
      "image": 'assets/images/kategori/denizdurumu.png',
      "category": "HAVUZ/DENİZ"
    }
  ];

  // List<UserModel> display_list = List.from();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          // Here the height of the container is 45% of our total height
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage('assets/images/logo/logo.png'),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 470.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: medCat.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      /* Positioned(
                        bottom: 35.0,
                        child: Container(
                          height: 120.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: textSubColor, width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ////////
                                  '${medCat[index]['category']}',
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),*/

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: myColor1, width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22.0),
                          boxShadow: [
                            BoxShadow(
                                color: textSubColor,
                                blurRadius: 4,
                                spreadRadius: 2)
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: 'bu ne',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height:
                                      MediaQuery.of(context).size.height * 0.45,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  image: AssetImage(
                                      'assets/images/kumlu_plaj.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    color: Colors.grey.withOpacity(0.4),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, top: 14),
                                      child: Text(
                                        '${medCat[index]['category']}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        // buttons(),
      ]),
    );
  }

  Widget buttons() => SizedBox(
        height: 400,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: medCat.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.6,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: myColorBack,
                              blurRadius: 4,
                              spreadRadius: 2)
                        ]),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OdaKontrol(),
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            /* SizedBox(
                                              height: 20,
                                            ),*/
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Image(
                                                        image: AssetImage(
                                                            '${medCat[index]['image']}'),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.35,
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.55,
                                                      ),
                                                      Text(
                                                          medCat[index]
                                                              ["category"],
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: myColor1),
                                                          textAlign:
                                                              TextAlign.center),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    )),
                              )
                            ],
                          )
                        ]),
                  )
                ],
              );
            }),
      );
}

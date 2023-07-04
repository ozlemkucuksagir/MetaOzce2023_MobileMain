import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../const/constant.dart';

class MenuForm extends StatefulWidget {
  const MenuForm({super.key});

  @override
  State<MenuForm> createState() => _MenuFormState();
}

class _MenuFormState extends State<MenuForm> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  List<dynamic> menu_kahvalti = [
    {
      "food_name": "Omlet",
      "food_image":
          "https://cdn.yemek.com/mnresize/940/940/uploads/2015/05/omlet-yemekcom.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "Çırpılmış yumurta",
      "category": "kahvalti",
      "puan": 3,
      "favori": false
    },
    {
      "food_name": "Menemen",
      "food_image":
          "https://www.altunmarket.com/app/assets/home/img/blog/menemen-min.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "Domates, biber ve yumurta",
      "category": "kahvalti",
      "puan": 2,
      "favori": false
    },
    {
      "food_name": "Haşlanmış Yumurta",
      "food_image":
          "https://1.bp.blogspot.com/-Cd3H95VpSpk/Xi_5PhJG8mI/AAAAAAAAAk8/Yov6A_DG8hMtoSzCtSP5ZSIhNzgQT1hvwCLcBGAsYHQ/s1600/haslanmis-yumurta-nekadardayanir.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "6-10 dakika haşlanmış yumurta",
      "category": "kahvalti",
      "puan": 4,
      "favori": false
    },
    {
      "food_name": "Pankek",
      "food_image":
          "https://i4.hurimg.com/i/hurriyet/75/750x422/5efc60a70f25431554874f87.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "Tazecik pankekler",
      "category": "kahvalti",
      "puan": 5,
      "favori": false
    },
    // {
    //   "food_name": "Krep",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-7.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "kahvalti",
    // }
  ];
  List<dynamic> menu_ogleYemegi = [
    {
      "food_name": "Kremalı Makarna",
      "food_image":
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2019/03/kremali-makarna-8.jpg",
      "food_detail":
          "Krema eklemeli penne makarna", //"https://randomuser.me/api/portraits/men/35.jpg",
      "category": "ogleYemegi",
      "puan": 3,
      "favori": false
    },
    {
      "food_name": "Hotdog",
      "food_image":
          "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2020_27/1586836/hotdogs-te-square-200702.jpg",
      "food_detail":
          "Hardal soslu sosisli sandviç", //"https://randomuser.me/api/portraits/men/35.jpg",
      "category": "ogleYemegi",
      "puan": 4,
      "favori": false
    },
    {
      "food_name": "Hamburger",
      "food_image":
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2022/05/hamburger-yemekcom.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "Tavuk veya etli",
      "category": "ogleYemegi",
      "puan": 5,
      "favori": false
    },
    // {
    //   "food_name": "Börek",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-12.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Hamburger",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-7.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Patates Haşlaması",
    //   "food_image":
    //       "https://randomuser.me/api/portraits/men/32.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // }
  ];
  List<dynamic> menu_aksamYemegi = [
    {
      "food_name": "Adana Kebap",
      "food_image":
          "https://iasbh.tmgrup.com.tr/040972/800/420/0/136/1152/740?u=https://isbh.tmgrup.com.tr/sbh/2020/03/05/en-harika-adana-kebap-tarifi-adana-kebap-nasil-yapilir-1583404717106.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "Adana yöresine özgü acı lezzet",
      "category": "aksamYemegi",
      "puan": 5,
      "favori": false
    },
    {
      "food_name": "İskender",
      "food_image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0d/%C4%B0skender_kebap.JPG",
      "food_detail": "İskender kebap",
      "category": "aksamYemegi",
      "puan": 5,
      "favori": false
    },
    {
      "food_name": "Tavuk Şiş",
      "food_image":
          "https://cdn.yemek.com/mnresize/1250/833/uploads/2020/12/tavuk-sis-tarifi.jpg",
      "food_detail": "Lokum kıvamında şişte tavuk",
      "category": "aksamYemegi",
      "puan": 5,
      "favori": false
    },
    {
      "food_name": "Fırında Alabalık",
      "food_image":
          "https://i.lezzet.com.tr/images-xxlarge-secondary/alabalik-nasil-pisirilir-84197c45-c87c-428b-91c7-a0cd714a3ccc.jpg",
      "food_detail": "Fırında pişirilmiş alabalık",
      "category": "aksamYemegi",
      "puan": 5,
      "favori": false
    },
    {
      "food_name": "Karides",
      "food_image":
          "https://d2lswn7b0fl4u2.cloudfront.net/photos/pg-popcorn-shrimp-1658240003.jpg",
      "food_detail": "Kızartılmış karides",
      "category": "aksamYemegi",
      "puan": 5,
      "favori": false
    },
  ];
  List<dynamic> menu_Icecekler = [
    {
      "food_name": "Soğuk Gazlı İçecekler",
      "food_image":
          "https://iasbh.tmgrup.com.tr/040972/800/420/0/136/1152/740?u=https://isbh.tmgrup.com.tr/sbh/2020/03/05/en-harika-adana-kebap-tarifi-adana-kebap-nasil-yapilir-1583404717106.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "food_detail": "Adana yöresine özgü acı kebap",
      "category": "ogleYemegi",
      "puan": 5,
      "favori": false
    },
    // {
    //   "food_name": "Tavuk",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-12.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Börek",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-12.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Hamburger",
    //   "food_image":
    //       "https://generatorfun.com/code/uploads/Random-Food-image-7.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // },
    // {
    //   "food_name": "Patates Haşlaması",
    //   "food_image":
    //       "https://randomuser.me/api/portraits/men/32.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
    //   "category": "ogleYemegi",
    // }
  ];

  bool isFavori = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 2.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset(
                  "assets/images/logo/logo.png",
                  width: 150,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "KAHVALTI",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: myColor1),
                  ),
                ],
              ),
            ],
          ),
        ),
        kahvaltiListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "ÖĞLE YEMEĞİ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        ogleYemegiListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "AKŞAM YEMEĞİ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        aksamYemegiListeleme(),
      ]),
    );
  }

  Widget kahvaltiListeleme() => Column(
        children: [
          Divider(
            height: 5,
            thickness: 2,
            color: kPrimaryLightColor,
          ),
          Container(
              height: 330,
              child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: menu_kahvalti.length,
                      itemBuilder: (context, index) {
                        var menu_ = menu_kahvalti[index];
                        return Column(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: myColor1,
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
                                            /*
                                              dc!.fetchDoctorDetail(display_list[
                                                      index]
                                                  .oid);*/
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           DoctorProfileScreen(
                                            //             favoriDoctor:
                                            //                 favoriDoctors[index],

                                            //             //id: display_list[index].ID!,
                                            //           )),
                                            // );
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              menu_["food_image"],
                                              width: 170,
                                              height: 165,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: kPrimaryLightColor,
                                                      blurRadius: 4,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Center(
                                              child: IconButton(
                                                icon: menu_['favori']
                                                    ? Icon(Icons.favorite)
                                                    : Icon(
                                                        Icons.favorite_border),
                                                color: myColor1,
                                                onPressed: () {
                                                  setState(() {
                                                    menu_['favori'] =
                                                        !menu_['favori'];
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "${menu_['food_name']} favorilere eklendi",
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        backgroundColor:
                                                            Colors.green);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      child: Container(
                                        //color: Colors.red,
                                        height: 100,
                                        width: 170,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                _buildRatingStars(
                                                    menu_['puan']),

                                                // Text(favoriDoctors[index]
                                                //         ['yildizOrtalamasi']
                                                //     .toString()),
                                              ],
                                            ),
                                            Text(
                                              menu_['food_name'],
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              menu_['food_detail'],
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );

  Widget ogleYemegiListeleme() => Column(
        children: [
          Divider(
            height: 5,
            thickness: 2,
            color: kPrimaryLightColor,
          ),
          Container(
              height: 350,
              child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: menu_ogleYemegi.length,
                      itemBuilder: (context, index) {
                        var menu_ = menu_ogleYemegi[index];
                        return Column(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: myColor1,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              menu_["food_image"],
                                              width: 170,
                                              height: 165,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: kPrimaryLightColor,
                                                      blurRadius: 4,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Center(
                                              child: IconButton(
                                                icon: menu_['favori']
                                                    ? Icon(Icons.favorite)
                                                    : Icon(
                                                        Icons.favorite_border),
                                                color: myColor1,
                                                onPressed: () {
                                                  setState(() {
                                                    menu_['favori'] =
                                                        !menu_['favori'];
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "${menu_['food_name']} favorilere eklendi",
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        backgroundColor:
                                                            Colors.green);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      child: Container(
                                        //color: Colors.red,
                                        height: 100,
                                        width: 170,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                _buildRatingStars(
                                                    menu_['puan']),

                                                // Text(favoriDoctors[index]
                                                //         ['yildizOrtalamasi']
                                                //     .toString()),
                                              ],
                                            ),
                                            Text(
                                              menu_['food_name'],
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              menu_['food_detail'],
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );

  Widget aksamYemegiListeleme() => Column(
        children: [
          Divider(
            height: 5,
            thickness: 2,
            color: kPrimaryLightColor,
          ),
          Container(
              height: 400,
              child: Center(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: menu_aksamYemegi.length,
                      itemBuilder: (context, index) {
                        var menu_ = menu_aksamYemegi[index];
                        return Column(
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: myColor1,
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
                                            /*
                                              dc!.fetchDoctorDetail(display_list[
                                                      index]
                                                  .oid);*/
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           DoctorProfileScreen(
                                            //             favoriDoctor:
                                            //                 favoriDoctors[index],

                                            //             //id: display_list[index].ID!,
                                            //           )),
                                            // );
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15),
                                            ),
                                            child: Image.network(
                                              menu_["food_image"],
                                              width: 170,
                                              height: 165,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: kPrimaryLightColor,
                                                      blurRadius: 4,
                                                      spreadRadius: 2)
                                                ]),
                                            child: Center(
                                              child: IconButton(
                                                icon: menu_['favori']
                                                    ? Icon(Icons.favorite)
                                                    : Icon(
                                                        Icons.favorite_border),
                                                color: myColor1,
                                                onPressed: () {
                                                  setState(() {
                                                    menu_['favori'] =
                                                        !menu_['favori'];
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "${menu_['food_name']} favorilere eklendi",
                                                        gravity:
                                                            ToastGravity.BOTTOM,
                                                        backgroundColor:
                                                            Colors.green);
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, top: 15),
                              child: Container(
                                // color: Colors.red,
                                height: 100,
                                width: 170,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        _buildRatingStars(menu_['puan']),

                                        // Text(favoriDoctors[index]
                                        //         ['yildizOrtalamasi']
                                        //     .toString()),
                                      ],
                                    ),
                                    Text(
                                      menu_['food_name'],
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      menu_['food_detail'],
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );
}

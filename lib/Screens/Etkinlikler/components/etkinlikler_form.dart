import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../const/constant.dart';

class EtkinliklerForm extends StatefulWidget {
  const EtkinliklerForm({super.key});

  @override
  State<EtkinliklerForm> createState() => _EtkinliklerFormState();
}

class _EtkinliklerFormState extends State<EtkinliklerForm> {
  List<dynamic> sabah_etkinlikleri = [
    {
      "etkinlik_name": "Pilates",
      "etkinlik_image":
          "https://i4.hurimg.com/i/hurriyet/75/750x422/5d8db3250f254415c8b240ff.jpg",
      "etkinlik_detail": "Grup pilatesi",
      "category": "sabah",
      "yer": "1",
      "etkinlik_saat": "08:30"
    },
    {
      "etkinlik_name": "Yoga",
      "etkinlik_image":
          "https://www.skechers.com.tr/blog/wp-content/uploads/2021/05/pexels-elly-fairytale-3822906.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Grup yogası",
      "category": "sabah",
      "yer": "1",
      "etkinlik_saat": "09:00"
    },
    {
      "etkinlik_name": "Sabah Koşusu",
      "etkinlik_image":
          "https://blog.decathlon.com.tr/wp-content/uploads/2016/04/1200x590.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Grup koşusu",
      "category": "sabah",
      "yer": "1",
      "etkinlik_saat": "09:30"
    },
  ];
  List<dynamic> oglen_etkinlikleri = [
    {
      "etkinlik_name": "Köpük Partisi",
      "etkinlik_image":
          "https://www.gercekalanya.com/images/haberler/19725.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Havuzda köpük partisi",
      "category": "oglenEtkinlikleri",
      "yer": "Büyük Havuz",
      "etkinlik_saat": "12:30"
    },
    {
      "etkinlik_name": "Havuz Topu",
      "etkinlik_image":
          "https://blog.n11.com/wp-content/uploads/2015/09/havuz-oyunlari-800x533.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Havuzda topla oyun",
      "category": "oglenEtkinlikleri",
      "yer": "Büyük Havuz",
      "etkinlik_saat": "13:30"
    },
    {
      "etkinlik_name": "Plaj Voleybolu",
      "etkinlik_image":
          "https://tvf.org.tr/wp-content/uploads/2022/06/BLG_3525-scaled.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Voleybol",
      "category": "oglenEtkinlikleri",
      "yer": "Plaj",
      "etkinlik_saat": "15:30"
    },
  ];
  List<dynamic> gece_etkinlikleri = [
    {
      "etkinlik_name": "Karaoke Gecesi",
      "etkinlik_image":
          "https://img.tamindir.com/2022/04/476720/android-icin-en-iyi-karaoke-uygulamalari-neler.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Sen de kendi şarkını söyle",
      "category": "aksamEtkinlikleri",
      "yer": "Amfi Tiyatro",
      "etkinlik_saat": "20:30"
    },
    {
      "etkinlik_name": "Latin Gecesi",
      "etkinlik_image":
          "https://dansakademi.com.tr/uploads/2022/03/latin-dansi.webp", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Latin şarkılarıyla gece",
      "category": "aksamEtkinlikleri",
      "yer": "Sahil kenarı",
      "etkinlik_saat": "21:30"
    },
    {
      "etkinlik_name": "Just Dance",
      "etkinlik_image":
          "https://staticctf.ubisoft.com/J3yJr34U2pZ2Ieem48Dwy9uqj5PNUQTn/2mhcY3CjaWNkebLxQKI8wL/41007c3702473fdce93d280b1f6a0850/jd20_page_meta_image.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Kendi dans şovunu yap",
      "category": "aksamEtkinlikleri",
      "yer": "Sahne",
      "etkinlik_saat": "22:30"
    },
  ];
  List<dynamic> cocuk_etkinlikleri = [
    {
      "etkinlik_name": "Dondurma Yarışması",
      "etkinlik_image":
          "https://www.buseterim.com.tr/upload/default/2022/8/6/6802.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Dondurma yeme yarışması",
      "category": "cocukEtkinlikleri",
      "yer": "1",
      "etkinlik_saat": "16:30"
    },
    {
      "etkinlik_name": "Dans Saati",
      "etkinlik_image":
          "https://i.ytimg.com/vi/VgeotaMKsKY/maxresdefault.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Çocuk dans gösterisi!",
      "category": "cocukEtkinlikleri",
      "yer": "Amfi Tiyatro",
      "etkinlik_saat": "19:30"
    },
    {
      "etkinlik_name": "Yüz Boyama",
      "etkinlik_image":
          "https://www.pusulastore.com/UserFiles/Fotograflar/org/1002-carioca-yuz-boyama-carnaval-mask-up-carnival-3-pcs2-jpg-mask-up-carnival-3-pcs2.jpg", //https://randomuser.me/api/portraits/men/35.jpg",
      "etkinlik_detail": "Boyalarla yüzümüzü renklendirelim!",
      "category": "cocukEtkinlikleri",
      "yer": "Amfi Tiyatro",
      "etkinlik_saat": "20:30"
    },
  ];
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
                    "SABAH ETKİNLİKLERİ",
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
        sabahEtkinlikleriListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "ÖĞLEN ETKİNLİKLERİ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        oglenEtkinlikleriListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "ÇOCUK ETKİNLİKLERİ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        cocukEtkinlikleriListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "GECE ETKİNLİKLERİ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        geceEtkinlikleriListeleme()
      ]),
    );
  }

  Widget sabahEtkinlikleriListeleme() => Column(
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
                      itemCount: sabah_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = sabah_etkinlikleri[index];
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
                                              etkinlik_["etkinlik_image"],
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
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: myColor1,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
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
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1),
                                    child: Container(
                                      height: 100,
                                      width: 170,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
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
                            )
                          ],
                        );
                      }))),
        ],
      );
  Widget oglenEtkinlikleriListeleme() => Column(
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
                      itemCount: oglen_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = oglen_etkinlikleri[index];
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
                                              etkinlik_["etkinlik_image"],
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
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: myColor1,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1),
                                    child: Container(
                                      height: 100,
                                      width: 170,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
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
                            )
                          ],
                        );
                      }))),
        ],
      );
  Widget cocukEtkinlikleriListeleme() => Column(
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
                      itemCount: cocuk_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = cocuk_etkinlikleri[index];
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
                                              etkinlik_["etkinlik_image"],
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
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: myColor1,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1),
                                    child: Container(
                                      height: 100,
                                      width: 170,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
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
                            )
                          ],
                        );
                      }))),
        ],
      );
  Widget geceEtkinlikleriListeleme() => Column(
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
                      itemCount: gece_etkinlikleri.length,
                      itemBuilder: (context, index) {
                        var etkinlik_ = gece_etkinlikleri[index];
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
                                              etkinlik_["etkinlik_image"],
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
                                                icon: const Icon(
                                                    Icons.favorite_outline),
                                                color: myColor1,
                                                onPressed: () {
                                                  setState(() {
                                                    Fluttertoast.showToast(
                                                        toastLength:
                                                            Toast.LENGTH_LONG,
                                                        msg:
                                                            "Favorilere eklendi",
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1),
                                    child: Container(
                                      height: 100,
                                      width: 170,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            etkinlik_['etkinlik_name'],
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_saat'],
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            etkinlik_['etkinlik_detail'],
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      }))),
        ],
      );
}

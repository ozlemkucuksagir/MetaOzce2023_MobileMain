import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../const/constant.dart';

class MenuForm extends StatefulWidget {
  const MenuForm({super.key});

  @override
  State<MenuForm> createState() => _MenuFormState();
}

class _MenuFormState extends State<MenuForm> {
  List<dynamic> menu_kahvalti = [
    {
      "food_name": "Makarna",
      "food_image":
          "https://randomuser.me/api/portraits/men/35.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "category": "Dermatolog",
    },
    {
      "food_name": "Tavuk",
      "food_image":
          "https://generatorfun.com/code/uploads/Random-Food-image-12.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "category": "Dental",
    },
    {
      "food_name": "Börek",
      "food_image":
          "https://st3.depositphotos.com/thumbs/13324256/image/16360/163603230/thumb_110.jpg?0.20474865698581013", //"https://randomuser.me/api/portraits/men/35.jpg",
      "category": "Dental",
    },
    {
      "food_name": "Tavuk Sote",
      "food_image":
          "https://randomuser.me/api/portraits/men/32.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "category": "Dental",
    },
    {
      "food_name": "Tavuk Sote",
      "food_image":
          "https://randomuser.me/api/portraits/men/32.jpg", //"https://randomuser.me/api/portraits/men/35.jpg",
      "category": "Dental",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 20.0),
          child: Text(
            "KAHVALTI",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        kahvaltiListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 20.0),
          child: Text(
            "ÖĞLE YEMEĞİ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        kahvaltiListeleme(),
        Container(
          width: MediaQuery.of(context).size.width, // EKRANIN GENİŞLİĞİ
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10.0, top: 20.0),
          child: Text(
            "AKŞAM YEMEĞİ",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: myColor1),
          ),
        ),
        kahvaltiListeleme(),
      ]),
    );
  }

  Widget kahvaltiListeleme() => Container(
      height: 300,
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
                      height: 250,
                      width: 200,
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: myColor1, blurRadius: 4, spreadRadius: 2)
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
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.network(
                                      menu_["food_image"],
                                      width: 200,
                                      height: 180,
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
                                      child: Icon(
                                        Icons.favorite_outline,
                                        color: myColor1,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    menu_['food_name'],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    menu_['food_name'],
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      // Text(favoriDoctors[index]
                                      //         ['yildizOrtalamasi']
                                      //     .toString()),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                  ],
                );
              })));
}

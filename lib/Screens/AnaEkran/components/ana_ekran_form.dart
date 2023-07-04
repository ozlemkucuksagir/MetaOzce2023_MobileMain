import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meta_ozce_0/Screens/AnaEkran/components/story_button.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/home/home_screen.dart';
import 'package:meta_ozce_0/Screens/Etkinlikler/etkinlikler_screen.dart';
import 'package:meta_ozce_0/Screens/Menu/menu_screen.dart';
import 'package:meta_ozce_0/Screens/Oda_Kontrol/oda_kontrol.dart';
import 'package:meta_ozce_0/const/constant.dart';

class AnaEkranForm extends StatefulWidget {
  const AnaEkranForm({super.key});

  @override
  State<AnaEkranForm> createState() => _AnaEkranFormState();
}

class _AnaEkranFormState extends State<AnaEkranForm> {
  List<dynamic> medCat = [
    {
      "name": "Metin Korkmaz",
      "image": "https://randomuser.me/api/portraits/men/19.jpg"
    },
    {
      "name": "Yeşim Yenil",
      "image": "https://randomuser.me/api/portraits/women/59.jpg"
    },
    {
      "name": "John Ken",
      "image": "https://randomuser.me/api/portraits/men/59.jpg"
    },
    {
      "name": "Melike Aytürk",
      "image": "https://randomuser.me/api/portraits/women/63.jpg"
    },
    {
      "name": "Halit Yıldız",
      "image": "https://randomuser.me/api/portraits/men/44.jpg"
    },
    {
      "name": "Betül Altın",
      "image": "https://randomuser.me/api/portraits/women/76.jpg"
    },
    {
      "name": "Zehra Yılmaz",
      "image": "https://randomuser.me/api/portraits/women/58.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Merhaba',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '0001 nolu oda',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.person,
                    color: kPrimaryLightColor,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                  height: 120,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: medCat.length,
                      itemBuilder: (context, index) {
                        var story_ = medCat[index];
                        return Column(
                          children: [
                            storyButton(story_['image'], story_['name'])
                          ],
                        );
                      })),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(12)),
            child: Row(children: [
              Container(
                child: Image.asset("assets/images/rob3.png"),
                height: 100,
                width: 100,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nasıl hissediyorsun?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Tatilinden menun musun?',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        'Hadi uygulamaya göz at!',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
        SizedBox(height: 25),
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
                  hintText: "Size nasıl yardımcı olabiliriz?"),
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Yardımcı olabileceğim içerikler",
                      style: TextStyle(
                          fontSize: 16,
                          color: myColor1,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: kPrimaryBlueColor)),
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 130,
                            height: 70,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kPrimaryGreenColor,
                                    padding: EdgeInsets.all(5),
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return MenuScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "MENU",
                                  textAlign: TextAlign.center,
                                )),
                          ),
                          SizedBox(
                            width: 130,
                            height: 70,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kPrimaryGreenColor,
                                    padding: EdgeInsets.all(4),
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return EtkinliklerScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "ETKİNLİKLER",
                                  textAlign: TextAlign.center,
                                )),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 130,
                            height: 70,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kPrimaryGreenColor,
                                    padding: EdgeInsets.all(5),
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
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
                                  "DENİZ VE HAVUZ DURUMU",
                                  textAlign: TextAlign.center,
                                )),
                          ),
                          SizedBox(
                            width: 130,
                            height: 70,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: kPrimaryGreenColor,
                                    padding: EdgeInsets.all(5),
                                    textStyle: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return OdaKontrol();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "ODA KONTROLÜ",
                                  textAlign: TextAlign.center,
                                )),
                          )
                        ]),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        )
      ]),
    );
  }
}

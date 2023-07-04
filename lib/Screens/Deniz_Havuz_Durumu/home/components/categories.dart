import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/constants.dart';
import 'package:meta_ozce_0/Screens/Deniz_Havuz_Durumu/home1/home1_screen.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Havuzlar", "Deniz"];

  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 55,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          setState(() {
            print("denize bastın");

            selectedIndex = index;
          });
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Home1Screen()));
                },
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        selectedIndex == index ? kTextColor : kTextLightColor,
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
                height: 2,
                width: 50,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

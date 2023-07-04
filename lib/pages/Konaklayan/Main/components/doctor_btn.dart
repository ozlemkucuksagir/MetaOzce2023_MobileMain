import 'package:flutter/material.dart';

import '../../../../const/constant.dart';

Widget storyButton(String doctorImage, String doctorName) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Column(children: [
      Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              border: Border.all(color: myColor1, width: 2),
              image: DecorationImage(image: NetworkImage(doctorImage))))
    ]),
  );
}

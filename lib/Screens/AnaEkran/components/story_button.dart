import 'package:flutter/material.dart';

import '../../../const/constant.dart';

Widget storyButton(String userImage, String userName) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Column(children: [
      Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: myColor1, width: 2),
              image: DecorationImage(image: NetworkImage(userImage)))),
      Text(userName)
    ]),
  );
}

import 'package:flutter/material.dart';

import '../../../../const/constant.dart';

Widget branchButton(String branchName) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: Column(children: [
      Text(branchName, style: TextStyle(fontSize: 20, color: myColor1)),
      Container(
        width: 80,
        height: 80,
      )
    ]),
  );
}

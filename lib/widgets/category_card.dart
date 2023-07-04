import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/hizmet_page.dart';
import 'package:meta_ozce_0/models/activity.dart';

import '../Screens/Otel_Konaklayan/diger_hizmetler_page.dart';

class KategoriBas extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final int id;

  const KategoriBas({
    required this.id,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.black12,
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            print('dsgdsd ${id}');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => (id < 2)
                      ? HizmetPage(
                          index_: id,
                          kategori: kategoriler_,
                        )
                      : DigerHizmetlerPage(index__: id)),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Spacer(),
                Image(
                  image: AssetImage('${imageUrl}'),
                  height: 70,
                ),
                Spacer(),
                Text(
                  '${title}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

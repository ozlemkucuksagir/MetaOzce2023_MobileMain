import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Style/Style.dart';
import 'package:meta_ozce_0/models/otel_model.dart';

import 'package:meta_ozce_0/widgets/app_buttons.dart';
import 'package:meta_ozce_0/widgets/responsive_button.dart';

import '../../const/background.dart';

class OtelDetailPage extends StatefulWidget {
  final Otel otel_;

  const OtelDetailPage({required this.otel_});

  @override
  _OtelDetailPageState createState() => _OtelDetailPageState();
}

class _OtelDetailPageState extends State<OtelDetailPage> {
  int selectedIndex = -1;
  @override
  final _firestore = FirebaseFirestore.instance;

  Widget build(BuildContext context) {
    CollectionReference hotelsRef = _firestore.collection('hotels');
    int gottenStars = widget.otel_.rating;
    Map<String, dynamic> _hotelData;

    return Scaffold(
      body: Background(
        title: "DETAY",
        child: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: ListView(
              children: [
                Expanded(
                  child: Container(
                    child: Image.network(
                      '${widget.otel_.imageUrl}',
                      fit: BoxFit.cover,
                    ),

                    height: 240, //bunu expanded yapsam iyi olur
                  ),
                ),
                Column(
                  children: [
                    Positioned(
                      top: 210,
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 790,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppLargeText(
                                    text: '${widget.otel_.name}',
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                  AppColorText(
                                    text: '${widget.otel_.price}',
                                    size: 15,
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: Theme.of(context).primaryColor),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  AppText(
                                      text:
                                          '${widget.otel_.country}, ${widget.otel_.city}')
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Wrap(
                                    children: List.generate(
                                      5,
                                      (index) {
                                        return Icon(
                                          Icons.star,
                                          color: index < gottenStars
                                              ? Colors.yellow
                                              : Colors.black12,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  AppText(text: '(${widget.otel_.rating}.0)'),
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              AppLargeText(
                                  text: 'Kişiler',
                                  color: Colors.black.withOpacity(0.8),
                                  size: 20),
                              const SizedBox(
                                height: 5,
                              ),
                              AppText(text: 'Grubunuzdaki kişi sayısı'),
                              const SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                children: List.generate(5, (index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: AppButtons(
                                        size: 50,
                                        color: selectedIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        backgroundColor: selectedIndex == index
                                            ? Colors.black
                                            : Colors.grey.shade200,
                                        borderColor: selectedIndex == index
                                            ? Colors.black
                                            : Colors.grey.shade200,
                                        text: "${(index + 1)}",
                                      ),
                                    ),
                                  );
                                }),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              AppLargeText(
                                text: 'Açıklama',
                                color: Colors.black.withOpacity(0.8),
                                size: 20,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              AppText(
                                text: '${widget.otel_.aciklama}',
                                size: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 95,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Positioned(
        bottom: 10,
        left: 20,
        right: 20,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              FavoriteButton(
                isFavorite: widget.otel_.flag,
                // iconDisabledColor: Colors.white,
                valueChanged: (_isFavorite) async {
                  _isFavorite
                      ? {
                          widget.otel_.flag = true,
                          _hotelData = {
                            'otelAdi': '${widget.otel_.name}',
                            'otelCity': '${widget.otel_.city}',
                            'otelFiyat': '${widget.otel_.price}',
                            'otelUlke': '${widget.otel_.country}',
                            'otelimageUrl': '${widget.otel_.imageUrl}',
                            'rating': widget.otel_.rating,
                          },
                          await hotelsRef
                              .doc('${widget.otel_.name}')
                              .set(_hotelData),
                        }
                      : {
                          widget.otel_.flag = false,
                          hotelsRef.doc('${widget.otel_.name}').delete(),
                        };
                },
              ),
              // AppButtons(
              //   size: 60,
              //   color: Colors.black54,
              //   backgroundColor: Colors.white,
              //   borderColor: Colors.black54,
              //   isIcon: true,
              //   icon: Icons.favorite_border,
              // ),
              const SizedBox(
                width: 60,
              ),
              ResponsiveButton(
                isResponsive:
                    true, //active edilcek video kesiliyo 2.50.00 gibi bi yerde
              ),
            ],
          ),
        ),
      ),
    );
  }
}

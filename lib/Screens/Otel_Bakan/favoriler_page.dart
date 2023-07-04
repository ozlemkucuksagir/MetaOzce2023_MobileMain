import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../const/background.dart';

class FavPage extends StatefulWidget {
  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    CollectionReference hotelsRef = _firestore.collection('hotels');
    Text _buildRatingStars(int rating) {
      String stars = '';
      for (int i = 0; i < rating; i++) {
        stars += '⭐';
      }
      stars.trim();
      return Text(stars);
    }

    return Scaffold(
      body: Background(
        title: 'FAVORİLERİM',
        child: SafeArea(
          child: Expanded(
              child: Column(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: hotelsRef.snapshots(),
                builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                  if (asyncSnapshot.hasError) {
                    return Center(
                      child: Text('Bir hata olustu'),
                    );
                  } else {
                    if (asyncSnapshot.hasData) {
                      List<DocumentSnapshot> listofDocumentSnap =
                          asyncSnapshot.data.docs;
                      return Flexible(
                        child: ListView.builder(
                          itemCount: listofDocumentSnap.length,
                          itemBuilder: (context, index) {
                            return Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 400,
                                        padding: EdgeInsets.only(
                                            top: 6.0,
                                            bottom: 6.0,
                                            left: 4.0,
                                            right: 4.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Positioned(
                                                        child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color:
                                                                Colors.black26,
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                            blurRadius: 6.0,
                                                          ),
                                                        ],
                                                      ),
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Container(
                                                            height: 100,
                                                            width: 150,
                                                            child:
                                                                Image.network(
                                                              '${listofDocumentSnap[index]['otelimageUrl']}',
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Positioned(
                                                            left: 10.0,
                                                            bottom: 10.0,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <
                                                                  Widget>[
                                                                Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Icon(
                                                                      FontAwesomeIcons
                                                                          .locationArrow,
                                                                      size:
                                                                          10.0,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Text(
                                                                      '${listofDocumentSnap[index]['otelUlke']} , ${listofDocumentSnap[index]['otelCity']}',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            10.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Text(
                                                              '${listofDocumentSnap[index]['otelAdi']}',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      13)),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          _buildRatingStars(
                                                              listofDocumentSnap[
                                                                      index]
                                                                  ['rating']),
                                                          SizedBox(
                                                            height: 20,
                                                          ),
                                                          Text(
                                                              '${listofDocumentSnap[index]['otelFiyat']}',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      12)),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15.0),
                                                  child: FavoriteButton(
                                                    iconSize: 45,
                                                    isFavorite: true,
                                                    // iconDisabledColor: Colors.white,
                                                    valueChanged:
                                                        (_isFavorite) async {
                                                      _isFavorite
                                                          ? print(
                                                              'Is Favorite : $_isFavorite dogru1')
                                                          : await listofDocumentSnap[
                                                                  index]
                                                              .reference
                                                              .delete();
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}

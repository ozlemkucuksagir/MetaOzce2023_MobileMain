import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FeedbackKonak extends StatefulWidget {
  // const MyWidget({Key? key}) : super(key: key);
  static const routeName = 'feedbackpage';

  @override
  State<FeedbackKonak> createState() => _FeedbackKonakState();
}

class _FeedbackKonakState extends State<FeedbackKonak> {
  final _formKey = GlobalKey<FormState>();
  late final _firestore = FirebaseFirestore.instance;
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  late CollectionReference hotelsRef = _firestore.collection('feedbacks');
  double otelPuan = 0;
  bool success = false;
  bool boolDidRating = false;

  double uygulamaPuan = 0;
  double _initialRating = 0.0;

  var _selectedIcon = Icons.star;
  bool _isVertical = false;

  String otelYorumu = "";

  String mobilYorumu = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('META OZCE'),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            key: _formKey,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  commentToOtel(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: RatingBar.builder(
                      initialRating: 0,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return const Icon(
                              Icons.sentiment_very_dissatisfied,
                              color: Colors.red,
                            );
                          case 1:
                            return const Icon(
                              Icons.sentiment_dissatisfied,
                              color: Colors.redAccent,
                            );
                          case 2:
                            return const Icon(
                              Icons.sentiment_neutral,
                              color: Colors.amber,
                            );
                          case 3:
                            return const Icon(
                              Icons.sentiment_satisfied,
                              color: Colors.lightGreen,
                            );
                          case 4:
                            return const Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.green,
                            );
                          default:
                            return const Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.green,
                            );
                        }
                      },
                      onRatingUpdate: (rates) {
                        otelPuan = rates;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  commentToMobil(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: RatingBar.builder(
                      initialRating: 0,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return const Icon(
                              Icons.sentiment_very_dissatisfied,
                              color: Colors.red,
                            );
                          case 1:
                            return const Icon(
                              Icons.sentiment_dissatisfied,
                              color: Colors.redAccent,
                            );
                          case 2:
                            return const Icon(
                              Icons.sentiment_neutral,
                              color: Colors.amber,
                            );
                          case 3:
                            return const Icon(
                              Icons.sentiment_satisfied,
                              color: Colors.lightGreen,
                            );
                          case 4:
                            return const Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.green,
                            );
                          default:
                            return const Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.green,
                            );
                        }
                      },
                      onRatingUpdate: (rates) {
                        uygulamaPuan = rates;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final isValid = _formKey.currentState!.validate();

                      isValid && otelPuan != 0 && uygulamaPuan != 0
                          ? {
                              hotelsRef.add({
                                'mobil': mobilYorumu,
                                'otelDegerlendirme': otelYorumu,
                                'otelPuan': otelPuan,
                                'rating': uygulamaPuan,
                              }),
                              boolDidRating = true,
                              _formKey.currentState!.save(),
                            }
                          : Fluttertoast.showToast(
                              toastLength: Toast.LENGTH_LONG,
                              msg: "Puanlama zorunlu.",
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.red);
                      ;
                    },
                    child: const Text("Gönder"),
                  ),
                  success
                      ? Container(
                          height: 50,
                          color: Colors.green,
                          child: const Center(
                              child: Text(
                                  "Geri bildirimiz alınmıştır teşekkür ederiz")))
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget commentToOtel() => TextFormField(
        maxLines: 3,
        decoration: InputDecoration(
          labelText: 'Otel hakkında geri bildirim',
          hintText: 'Otel hakkında geri bildirim',
          icon: Icon(Icons.mode_comment),
          fillColor: Colors.white,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Boş olamaz.";
          } else {
            return null;
          }
        },
        maxLength: 150,
        onChanged: (value) {
          setState(() {
            otelYorumu = value;
          });
        },
      );

  Widget commentToMobil() => TextFormField(
        maxLines: 3,
        decoration: InputDecoration(
          labelText: 'Uygulama hakkında geri bildirim',
          hintText: 'Uygulama hakkında geri bildirim',
          icon: Icon(Icons.mode_comment),
          fillColor: Colors.white,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Boş olamaz.";
          } else {
            return null;
          }
        },
        maxLength: 150,
        onChanged: (value) {
          setState(() {
            mobilYorumu = value;
          });
        },
      );
}

import 'package:flutter/material.dart';
import 'package:meta_ozce_0/models/activity.dart';
import 'package:meta_ozce_0/models/model1.dart';

class HizmetPage extends StatefulWidget {
  final List<Kategori> kategori;
  final int index_;

  HizmetPage({required this.kategori, required this.index_});
  @override
  _HizmetPageState createState() => _HizmetPageState();
}

class _HizmetPageState extends State<HizmetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                '${widget.kategori[widget.index_].baslik}',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 20.0),
            Model1(kategori__: widget.kategori[widget.index_]),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('META OZCE'),
        centerTitle: true,
      ),
    );
  }
}

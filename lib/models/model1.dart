import 'package:flutter/material.dart';
import 'package:meta_ozce_0/models/activity.dart';

class Model1 extends StatefulWidget {
  final Kategori kategori__;
  late AltKategori altkategori__;
  late Activity activity__;

  Model1({required this.kategori__});
  @override
  _Model1State createState() => _Model1State();
}

class _Model1State extends State<Model1> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${widget.kategori__.alt_kategori![0].name}',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All >',
                  style: TextStyle(
                    color: Theme.of(context).textSelectionTheme.selectionColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 500,
          child: Divider(height: 15, color: Colors.black),
        ),
        Container(
          height: 220.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.kategori__.alt_kategori![0].activitys!.length,
            itemBuilder: (BuildContext context, int index) {
              widget.altkategori__ = widget.kategori__.alt_kategori![0];

              widget.activity__ = widget.altkategori__.activitys![index];
              print(index);

              return Container(
                margin: EdgeInsets.all(10.0),
                width: 150.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      top: 10.0,
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  child: Text('${widget.activity__.time}',
                                      style: TextStyle(fontSize: 13)),
                                  padding: EdgeInsets.fromLTRB(0, 0, 90, 5)),
                              Image(
                                height: 80.0,
                                width: 80.0,
                                image:
                                    AssetImage('${widget.activity__.imageUrl}'),
                                fit: BoxFit.cover,
                              ),
                              Text(
                                ////////
                                '${widget.activity__.name}',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Hero(
                            tag: 'null',
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          Positioned(
                            left: 50.0,
                            bottom: 10.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SizedBox(width: 50.0),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '${widget.kategori__.alt_kategori![1].name}',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text(
                  'See All >',
                  style: TextStyle(
                    color: Theme.of(context).textSelectionTheme.selectionColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 500,
          child: Divider(height: 15, color: Colors.black),
        ),
        Container(
          height: 220.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.kategori__.alt_kategori![1].activitys!.length,
            itemBuilder: (BuildContext context, int index) {
              widget.altkategori__ = widget.kategori__.alt_kategori![1];

              widget.activity__ = widget.altkategori__.activitys![index];
              print(index);

              return Container(
                margin: EdgeInsets.all(10.0),
                width: 150.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      top: 10.0,
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  child: Text('${widget.activity__.time}',
                                      style: TextStyle(fontSize: 13)),
                                  padding: EdgeInsets.fromLTRB(0, 0, 90, 5)),
                              Image(
                                height: 80.0,
                                width: 80.0,
                                image:
                                    AssetImage('${widget.activity__.imageUrl}'),
                                fit: BoxFit.cover,
                              ),
                              Text(
                                ////////
                                '${widget.activity__.name}',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Hero(
                            tag: 'null',
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          Positioned(
                            left: 50.0,
                            bottom: 10.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SizedBox(width: 50.0),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

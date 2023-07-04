import 'package:flutter/material.dart';

class Deniz {
  final String image,
      title,
      description1,
      description2,
      description3,
      availability;
  final int price, size, id;
  final Color color;
  Deniz({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.size,
    required this.color,
    required this.availability,
  });
}

List<Deniz> denizler = [
  Deniz(
      id: 1,
      title: "Kumlu Plaj",
      price: 234,
      size: 12,
      description1: "Plajda şu an sıcaklık 38",
      description2: "Dalga boyu kıyılarda 0.3m",
      description3: "Rüzgar 4 ila 6 aralığında",
      availability: "Kullanılabilir",
      image: "assets/images/kumlu_plaj.png",
      color: Color(0xFF3D82AE)),
  Deniz(
      id: 2,
      title: "Taşlı Sahil",
      price: 234,
      size: 8,
      description1: "Plajda şu an sıcaklık 30",
      description2: "Dalga boyu kıyılarda 0.1m",
      description3: "Rüzgar 1 ila 3 aralığında",
      availability: "Kullanılabilir",
      image: "assets/images/tasli_sahil.png",
      color: Color(0xFFD3A984)),
  // Deniz(
  //     id: 3,
  //     title: "",
  //     price: 234,
  //     size: 10,
  //     description1: "",
  //     description2: "",
  //     description3: "",
  //     availability: "Kullanılabilir",
  //     image: "assets/images/aqua_havuz.png",
  //     color: Color(0xFF989493)),
  // Deniz(
  //     id: 4,
  //     title: "Olimpik Havuz",
  //     price: 234,
  //     size: 11,
  //     description1: "",
  //     description2: "",
  //     description3: "",
  //     availability: "Kullanılabilir",
  //     image: "assets/images/olimpik_havuz.png",
  //     color: Color(0xFFE6B398)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

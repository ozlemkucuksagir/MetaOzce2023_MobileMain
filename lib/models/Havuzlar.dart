import 'package:flutter/material.dart';

class Product {
  final String image, title, description, availability;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    required this.availability,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Çocuk Havuzu",
      price: 234,
      size: 12,
      description:
          " Çocuk Havuzu 1: 40 m² genişliğinde, 40 cm derinliğinde olan bu havuz minikleriniz için harika bir eğlence seçeneği olup son derece güvenlidir. \n"
          " Çocuk Havuzu 2: 25m² genişliğinde 90 cm derinliktedir. Çocuklarınızın yüzmeyi burada öğrenmeleri ve geliştirmeleri kaçınılmazdır ",
      availability: "Kullanılabilir",
      image: "assets/images/cocuk_havuzu.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Fil Havuzu",
      price: 234,
      size: 8,
      description:
          " 150 m² genişliğinde 90 cm ile 110 cm arasındaki derinliklere sahip fil havuzda zaman geçirmek ve spor anlamında yüzmek büyük bir keyifli eğlence ve adrenalin doludur.  ",
      availability: "Kullanılabilir",
      image: "assets/images/fil_havuzu.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Aqua Havuz",
      price: 234,
      size: 10,
      description:
          " 375 m² genişliğinde 100 cm ile 150 cm arasındaki derinliklere sahip aqua havuzda zaman geçirmek ve spor anlamında yüzmek büyük bir keyifli ve adrenalin doludur.  ",
      availability: "Kullanılabilir",
      image: "assets/images/aqua_havuz.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Olimpik Havuz",
      price: 234,
      size: 11,
      description:
          " 675 m² genişliğinde 130 cm ile 190 cm arasındaki derinliklere sahip gitar havuzda zaman geçirmek ve spor anlamında yüzmek büyük bir keyiftir. Sudan çıktığınızda hemen yanı başınızda bulunan içecek reyonuna uğrayıp içeceklerinizi aldıktan sonra tekrar şezlongunuza uzanıp rahatlıkla içebilirsiniz. ",
      availability: "Kullanılabilir",
      image: "assets/images/olimpik_havuz.png",
      color: Color(0xFFE6B398)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

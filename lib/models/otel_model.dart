class Otel {
  String? imageUrl;
  String? name;
  int rating;
  String? price;
  String? country;
  String? city;
  bool? flag;
  String? aciklama;

  Otel({
    this.imageUrl,
    this.name,
    required this.rating,
    this.price,
    this.country,
    this.city,
    this.flag,
    this.aciklama,
  });
}

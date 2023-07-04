class Kategori_olustur {
  //String? imageUrl;
  String? title;
  String? imageUrl;
  //String? description;
  int? index;

  Kategori_olustur({
    this.title,
    this.imageUrl,
    this.index,
  });
}

List<Kategori_olustur> kategoriOlusturuldu = [
  Kategori_olustur(
    title: 'Etkinlikler',
    imageUrl: 'assets/images/kategori/activity.png',
    index: 1,
  ),
  Kategori_olustur(
    title: 'Oda Kontrol',
    imageUrl: 'assets/images/kategori/odakontrol.png',
    index: 2,
  ),
  Kategori_olustur(
    title: 'Deniz durmu',
    imageUrl: 'assets/images/kategori/denizdurumu.png',
    index: 3,
  ),
];

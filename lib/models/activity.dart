List<Activity> yetiskinEglenceleri_ = [
  Activity(
      imageUrl: 'assets/images/kategori/italyan gecesi.png',
      name: 'İtalyan Gecesi',
      time: '20.00'),
  Activity(
      imageUrl: 'assets/images/kategori/turkgecesi.png',
      name: 'Türk Gecesi',
      time: '21.00'),
  Activity(
      imageUrl: 'assets/images/kategori/acikhavasineması.png',
      name: 'Sinema',
      time: '22.30'),
];
List<Activity> cocukEglenceleri_ = [
  Activity(
      imageUrl: 'assets/images/kategori/cocukdansi.png',
      name: 'Çocuk Dansı',
      time: '12.00'),
  Activity(
      imageUrl: 'assets/images/kategori/palyaco.png',
      name: 'Palyaço',
      time: '13.00'),
  Activity(
      imageUrl: 'assets/images/kategori/yuzboyama.png',
      name: 'Yüz Boyama',
      time: '14.00')
];
List<Activity> yemekler_ = [
  Activity(
      imageUrl: 'assets/images/kategori/lazanya.png',
      name: 'Lazanya',
      time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/köfte.png', name: 'Köfte', time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/fırındalevrek.png',
      name: 'Fırında Levrek',
      time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/adanakebap.png',
      name: 'Adana Kebap',
      time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/kumpir.png', name: 'Kumpir', time: ' '),
];
List<Activity> tatlilar_ = [
  Activity(
      imageUrl: 'assets/images/kategori/tatlı.png', name: 'Baklava', time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/cheesecake.png',
      name: 'Cheese Cake',
      time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/browni.png', name: 'Browni', time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/taskadayıf.png',
      name: 'Taş Kadayıf',
      time: ' '),
  Activity(
      imageUrl: 'assets/images/kategori/tiramisu.png',
      name: 'Tiramisu',
      time: ' '),
];

class Activity {
  String? imageUrl;
  String? name;
  String? time;

  Activity({
    required this.imageUrl,
    required this.name,
    this.time,
  });
}

class AltKategori {
  String? name;
  List<Activity>? activitys;

  AltKategori({
    required this.activitys,
    required this.name,
  });
}

List<AltKategori> menu_alt = [
  AltKategori(activitys: yemekler_, name: 'Yemekler'),
  AltKategori(activitys: tatlilar_, name: 'Tatlılar'),
];
List<AltKategori> eglence_alt = [
  AltKategori(activitys: yetiskinEglenceleri_, name: 'Yetiskin Eglenceleri'),
  AltKategori(activitys: cocukEglenceleri_, name: 'Cocuk Eglenceleri'),
];

class Kategori {
  //tatli, tuzlu || yetiskin çocuk
  String? baslik;
  List<AltKategori>? alt_kategori;
  String? imageUrl;
  //String? description;
  int? index;

  Kategori({
    required this.baslik,
    this.alt_kategori,
    this.imageUrl,
    this.index,
  });
}

List<Kategori> kategoriler_ = [
  Kategori(
      baslik: 'Menü',
      imageUrl: 'assets/images/kategori/activity.png',
      index: 0,
      alt_kategori: menu_alt),
  Kategori(
      baslik: 'Etkinlikler',
      imageUrl: 'assets/images/kategori/activity.png',
      index: 1,
      alt_kategori: eglence_alt),
  Kategori(
    baslik: 'Oda Kontrol',
    imageUrl: 'assets/images/kategori/odakontrol.png',
    index: 2,
  ),
  Kategori(
    baslik: 'Deniz Durumu',
    imageUrl: 'assets/images/kategori/denizdurumu.png',
    index: 3,
  ),
];

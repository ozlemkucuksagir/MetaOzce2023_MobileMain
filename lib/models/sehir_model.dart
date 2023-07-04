import './otel_model.dart';

class Sehir_olustur {
  //String? imageUrl;
  String? city;
  String? country;
  //String? description;
  List<Otel>? oteller;

  Sehir_olustur({
    //this.imageUrl,
    this.city,
    this.country,
    //this.description,
    this.oteller,
  });
}

List<Otel> antalya = [
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/type-entertainment-complex-popular-resort-with-pools-water-parks-turkey-with-more-than-5-million-visitors-year-amara-dolce-vita-luxury-hotel-resort-tekirova-kemer_146671-18728.jpg?size=626&ext=jpg',
    name: 'Ayshenia',
    rating: 5,
    price: '3.490 ₺',
    country: 'Türkiye',
    city: 'Antalya',
    flag: false,
    aciklama:
        '* Tesis 48000 m², geniş ve özenle düzenlenmiş bahçe içerisinde 4 katlı 1 ana bina ve 14 bahçe blok olmak üzere toplam 391 adet odadan oluşmaktadır.Tesis içerisinde Lobby, Resepsiyon, Kapalı ve Açık Teraslı Ana Restaurant (375 kişi kapalı, 590 kişi açık), '
        '2 adet A la Carte Restaurant rezervasyonlu (Türk ve Balık Mutfağı ), 4 Bar ( Lobby Bar, Pool Bar, Snack Bar,Disko Bar), TV odası, 2 adet tenis sahası ( beton zeminli ), 1 basketbol sahası, 1 mini futbol sahası, Hamam, Sauna, Masaj,'
        'Fitness Center, Su Sporları, Alışveriş Merkezi, Fotoğrafçı, Araba Kiralama, 2 Adet Toplantı Salonu, Açık Disco ve iskele bulunmaktadır. Çamaşır-Ütü  Servisi, Döviz bozdurma, odalarda kasa(ücretli), Lobide ücretsiz kablosuz internet hizmeti bulunmaktadır. Sağlık Hizmeti ücretli olup24 saat ulaşılabilir durumdadır.',
  ),
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/beautiful-luxury-outdoor-swimming-pool-hotel-resort_74190-7433.jpg?size=626&ext=jpg',
    name: 'Nirvana Dolce Vita',
    rating: 4,
    price: '3.100 ₺',
    country: 'Türkiye',
    city: 'Antalya',
    flag: false,
    aciklama:
        '* Tesis 3 blok ve 7 kattan oluşmaktadır. A blok 1 asansör, B ve C blokta 2 şer olmak üzere toplam 5 misafir asansörü mevcuttur.\n'
        '* Mini Bar (Soft içecekler - Yalnızca giriş gününde doldurulmaktadır)\n'
        '* Canlı Müzik (Belli günlerde) Pazartesi,Salı,Çarşamba,Cuma günlerinde mevcut olup, ücretsizdir.\n'
        '* Tesisin özel plajına gün boyu ücretsiz servis hizmeti verilmektedir.\n'
        '*Tesisin geneli engelli misafirler için kullanışlıdır.\n'
        '* Çocuk Kulübü :  (4-12 Yaş grubu çocuk) 10.00 - 12.00 ve 14.00 - 17.00 saatleri arasında hizmet vermektedir.\n'
        '* İnternet: Lobby, genel alan ve odalarda internet bulunmaktadır. Ücretsizdir.\n'
        '* Tesise evcil hayvan kabul edilmemektedir.\n',
  ),
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/swimming-pool-beach-luxury-hotel-type-entertainment-complex-amara-dolce-vita-luxury-hotel-resort-tekirova-kemer-turkey_146671-18726.jpg?size=626&ext=jpg',
    name: 'Crystal Centro Resort',
    rating: 4,
    price: '3.250 ₺',
    country: 'Türkiye',
    city: 'Antalya',
    flag: false,
    aciklama: '* Tesis 1+5 kat, 2 adet asansörden oluşmaktadır.\n'
        '* Minibarlara günlük kişi başı 0.30 cl şişe su konulmaktadır.\n'
        '* İnternet genel alanlar ve odalarda mevcut olup, ücretlidir.\n'
        '* Toplantı salonu mevcuttur.1 adet 60 m² Ücretsiz teknik donanım: kürsü, perde, tasarı, kablosuz mikrofon, kürsü mikrofonu, yaka mikrofonu, flipchart Internet,   Barkovizyon.\n'
        '* Mini club; Eğitilmiş animasyon çalışanları ile özenle hazırlanmış çocuk oyunları, 4-12 yaş arası hizmet vermektedir, hizmetler belirli günlerde ve belirli saatlerde gerçekleşmektedir.\n'
        '* Evcil hayvan kabul edilmemektedir.\n'
        '* MAYA WORLD GOLF VE MAYA WORLD SİDE yanyana oldukları için snack restaurant, plaj ve alacarte restaurantları ortak kullanmaktadırlar\n',
  ),
];
List<Otel> mugla = [
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/ocean-travel-modern-nobody-infinity_1203-4520.jpg?size=626&ext=jpg',
    name: 'Khai Hotel Bodrum',
    rating: 5,
    price: '16.000 ₺',
    country: 'Türkiye',
    city: 'Muğla',
    flag: false,
    aciklama: '* Tesis 3 kattan oluşmakta olup, 2 adet asansör bulunmaktadır.\n'
        '* Evcil hayvan kabul edilmemektedir.\n'
        '* SPA & WELLNESS (Kadınlar ve Erkekler tarafı olarak iki ayrı SPA Merkezi bulunmaktadır.)\n'
        '* Otele giriş saati : 15:00 / Otelden çıkış saati : 12:00 şeklindedir.\n'
        '* Minibar Menüsü; Kola, Şekersiz Kola, Fanta, Sprite, Soda, Meyve Suyu, Su, Ice Tea, Peynirli Kraker, Çikolatalı Gofret, Çikolata şeklindedir. Her gün yenilenir.\n'
        '* Tesiste 2 adet toplantı salonu mevcuttur. 237 m2 ve 46 m2 genişliğindedir. Barkovizyon, ses sistemi mevcuttur.\n'
        '* Tesisin tamamında ücretsiz wifi hizmeti vardır.\n',
  ),
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/pool-with-palm-trees-sides_1203-2070.jpg?size=626&ext=jpg&ga=GA1.2.1404248509.1682363564&semt=robertav1_2_sidr',
    name: 'Rixos Premium Bodrum',
    rating: 5,
    price: '17.350 ₺',
    country: 'Türkiye',
    city: 'Muğla',
    flag: false,
    aciklama:
        "Rixos'un Premium konseptli tesislerinde misafirler için ayrıcalıklı hizmetler sunuluyor.\n"
        "Girişten itibaren özenli bir hizmet sunan tesiste misafirler hostes tarafından karşılanıyor. Özel oda tipinde konaklayan misafirler, sadık misafirler ve balayı çiftleri için özel olarak turn-down ayrıcalığı sunuluyor.\n"
        "Engelsiz Tatil: Engelli ve hamile misafirlerin daha rahat ve keyifli bir tatil geçirmesi için ortak alanlarda, restoranlarda ve sahil bölümünde özel hizmetler sunuluyor.\n"
        " Maldivler’i aratmayacak güzellikteki turkuaz denizin bembeyaz kumlarla buluştuğu eşsiz plajı, kaliteyi ve şıklığı bir arada sunan ayrıcalıklı hizmet anlayışıyla Rixos Premium Bodrum, unutulmaz bir tatil için misafirlerini bekliyor. Kaynar mevkiinde kendine ait koyunda her yaştan misafirine kendilerini özel hissettirmeyi başaran Rixos Premium Bodrum, dileyenlere eğlenceye ve kalabalıklara karışma olanağı dileyenlere yalıtılmış ve huzurlu bir atmosfer sunuyor.\n",
  ),
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/tropical-hotel-holiday-background-resort_1203-4943.jpg?size=626&ext=jpg',
    name: 'Elite Hotel Yalıkavak',
    rating: 3,
    price: '4.750 ₺',
    country: 'Türkiye',
    city: 'Muğla',
    flag: false,
    aciklama:
        '* Ön Blok 3 Kat , Arka Blok 3 Kat, Bir Adet Asansör Mevcuttur. Ön Blok Tüm Katlara Asansör Erişimi Vardır. Arka Blok İse İkinci Kata Kadar Asansör Erişimi Vardır.\n'
        '  * Küdür koyu mevkiinde  bulunan tesis; Bodrum merkeze 25 , Yalıkavak merkeze 2 km ,ünlü markaların bulunduğu marinaya ise 2.5 km mesafede yer almaktadır. Tesis merkeze ve marinaya yürüyüş mesafesindedir.\n'
        '* Tesis iki bloktan oluşmakta olup, bloklara ve odalara  erişim asansörle sağlanmaktadır. Ortak alanlarda kesintisiz internet erişimi  bulunmaktadır. Aynı zamanda tesis engelli misafirlerin ihtiyaçları doğrultusunda da hizmet vermektedir.\n'
        '* Ücretsiz internet erişimi; tüm ortak kullanım alanlarında mevcuttur.\n',
  ),
];
List<Otel> izmir = [
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/swimming-pool-beach-luxury-hotel-outdoor-pools-spa-amara-dolce-vita-luxury-hotel-resort-tekirova-kemer-turkey_146671-18751.jpg?size=626&ext=jpg',
    name: 'Vadi Boutique Hotel',
    rating: 4,
    price: '13.608 ₺',
    country: 'Türkiye',
    city: 'İzmir',
    flag: false,
    aciklama: '* Tesisin 38 odası mevcuttur.'
        '* Standart bahçe manzaralı oda; 25 m2 +  balkonlu + bahçe manzaralı, Max. 3 - ( Portatif yatak ile ).\n'
        '* Deluxe havuz manzaralı oda; 25 m2 + balkon / zemin kattaki odalarda veranda, Max. 3 - ( Portatif yatak ile ).\n'
        '* Deluxe bahçe manzaralı oda; 25 m2 + balkon / zemin kattaki odalarda veranda, Max. 3 - ( Portatif yatak ile ).\n'
        '* Teras Oda; 25 m2 +  Teras, Max. 3 - ( Portatif yatak ile ).\n'
        '* Odalarda Minibar- saç kurutma makinesi - Uydu tv - Duşa kabin - Balkon - Telefon - Çay-kahve set-up ve ikram su Çelik kasa - Duman dedektörü - Yağmurlama yangın söndürme sistemi, ahşap - parke zemin mevcuttur.\n',
  ),
  Otel(
    imageUrl:
        'https://img.freepik.com/free-photo/swimming-pool_74190-2109.jpg?size=626&ext=jpg',
    name: 'Bera Hotel',
    rating: 4,
    price: '2.300 ₺',
    country: 'Türkiye',
    city: 'İzmir',
    flag: false,
    aciklama:
        '* Tesis 3 blok ve 7 kattan oluşmaktadır. A blok 1 asansör, B ve C blokta 2 şer olmak üzere toplam 5 misafir asansörü mevcuttur.\n'
        '* Mini Bar (Soft içecekler - Yalnızca giriş gününde doldurulmaktadır)\n'
        '* Canlı Müzik (Belli günlerde) Pazartesi,Salı,Çarşamba,Cuma günlerinde mevcut olup, ücretsizdir.\n'
        '* Tesisin özel plajına gün boyu ücretsiz servis hizmeti verilmektedir.\n'
        '*Tesisin geneli engelli misafirler için kullanışlıdır.\n'
        '* Çocuk Kulübü :  (4-12 Yaş grubu çocuk) 10.00 - 12.00 ve 14.00 - 17.00 saatleri arasında hizmet vermektedir.\n'
        '* İnternet: Lobby, genel alan ve odalarda internet bulunmaktadır. Ücretsizdir.\n'
        '* Tesise evcil hayvan kabul edilmemektedir.\n',
  ),
  Otel(
    imageUrl:
        'https://img.freepik.com/premium-photo/swimming-pool-beach-luxury-hotel_146671-19401.jpg?size=626&ext=jpg',
    name: 'Wome Deluxe',
    rating: 3,
    price: '1.780 ₺',
    country: 'Türkiye',
    city: 'İzmir',
    flag: false,
    aciklama: '* Tesis 1+5 kat, 2 adet asansörden oluşmaktadır.\n'
        '* Minibarlara günlük kişi başı 0.30 cl şişe su konulmaktadır.\n'
        '* İnternet genel alanlar ve odalarda mevcut olup, ücretlidir.\n'
        '* Toplantı salonu mevcuttur.1 adet 60 m² Ücretsiz teknik donanım: kürsü, perde, tasarı, kablosuz mikrofon, kürsü mikrofonu, yaka mikrofonu, flipchart Internet,   Barkovizyon.\n'
        '* Mini club; Eğitilmiş animasyon çalışanları ile özenle hazırlanmış çocuk oyunları, 4-12 yaş arası hizmet vermektedir, hizmetler belirli günlerde ve belirli saatlerde gerçekleşmektedir.\n'
        '* Evcil hayvan kabul edilmemektedir.\n'
        '* MAYA WORLD GOLF VE MAYA WORLD SİDE yanyana oldukları için snack restaurant, plaj ve alacarte restaurantları ortak kullanmaktadırlar\n',
  ),
];

List<Sehir_olustur> sehirler = [
  Sehir_olustur(
    //imageUrl: 'assets/images/antalya.jfif',
    city: 'ANTALYA',
    country: 'Türkiye',
    // description: '',
    oteller: antalya,
  ),
  Sehir_olustur(
    //imageUrl: 'assets/images/antalya.jfif',
    city: 'MUĞLA',
    country: 'Türkiye',
    //description: '',
    oteller: mugla,
  ),
  Sehir_olustur(
    // imageUrl: 'assets/images/antalya.jfif',
    city: 'İZMİR',
    country: 'Türkiye',
    //description: '',
    oteller: izmir,
  ),
];

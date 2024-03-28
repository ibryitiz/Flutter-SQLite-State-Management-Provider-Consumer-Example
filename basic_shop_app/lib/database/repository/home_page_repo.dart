import 'package:basic_shop_app/database/sqlite/veritabani_yardimcisi.dart';
import 'package:basic_shop_app/model/urun.dart';

class HomeRepository {
  Future<List<Urun>> urunleriGetir() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM urunler");

    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Urun(
        urunId: satir["urun_id"],
        urunAd: satir["urun_ad"],
        urunFiyat: satir["urun_fiyat"],
        urunResim: satir["urun_resim"],
      );
    });
  }
}

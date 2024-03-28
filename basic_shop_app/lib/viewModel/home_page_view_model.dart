import 'package:basic_shop_app/database/repository/home_page_repo.dart';
import 'package:basic_shop_app/model/urun.dart';
import 'package:basic_shop_app/view/home_page.dart';
import 'package:basic_shop_app/view/product_details_page.dart';
import 'package:basic_shop_app/view/shop_page.dart';
import 'package:basic_shop_app/viewModel/details_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageViewModel extends ChangeNotifier {
  HomePageViewModel() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      urunleriYukle();
    });
  }
  var hRepo = HomeRepository();

  // bottom navigation
  var sayfalar = [const HomePage(), const ShopPage()];

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  //  home page urunleri yukle
  List<Urun> _urunler = [];
  List<Urun> get urunler => _urunler;
  set urunler(List<Urun> value) {
    _urunler = value;
    notifyListeners();
  }

  void urunleriYukle() async {
    var liste = await hRepo.urunleriGetir();
    urunler = liste;
  }

  // detay sayfaya git
  void detaylarSayfasiniAc(BuildContext context, int index) {
    MaterialPageRoute sayfaYolu = MaterialPageRoute(
      builder: (context) {
        return ChangeNotifierProvider(
          create: (context) => DetailsPageViewModel(urunler[index]),
          child: const DetailsPage(),
        );
      },
    );
    Navigator.push(context, sayfaYolu);
  }
}

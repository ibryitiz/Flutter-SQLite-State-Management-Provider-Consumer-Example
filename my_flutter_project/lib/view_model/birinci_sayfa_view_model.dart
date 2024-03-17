import 'package:flutter/material.dart';
import 'package:my_flutter_project/view/ikinci_sayfa.dart';
import 'package:my_flutter_project/view_model/ikinci_sayfa_view_model.dart';
import 'package:provider/provider.dart';

class BirinciViewModel with ChangeNotifier{

  String _yazi = "Merhaba";

  String get yazi => _yazi;

  set yazi(String value){
    _yazi = value;
    notifyListeners();
  }

  bool _checkboxSeciliMi = false;

   bool get checkboxSeciliMi => _checkboxSeciliMi;

  set checkboxSeciliMi(bool value){
    _checkboxSeciliMi = value;
    notifyListeners();
  }


  Color _renk = Colors.white;

  Color get renk => _renk;
  set renk(Color value){
    _renk = value;
    notifyListeners();
  }

  void ikinciSayfayiAc(BuildContext context){
    MaterialPageRoute pageRoute = MaterialPageRoute(
      builder: (context) {
        return ChangeNotifierProvider(
          create: (context) => IkinciViewModel(),
          child: const IkinciSayfa(),
        );
      },
    );
    Navigator.push(context, pageRoute);
  }
}
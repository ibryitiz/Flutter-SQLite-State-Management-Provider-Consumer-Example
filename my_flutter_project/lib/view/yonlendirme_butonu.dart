import 'package:flutter/material.dart';
import 'package:my_flutter_project/view_model/birinci_sayfa_view_model.dart';
import 'package:provider/provider.dart';

class YonlendirmeButonu extends StatelessWidget {
  const YonlendirmeButonu({super.key});

  @override
  Widget build(BuildContext context) {
    BirinciViewModel viewModel = Provider.of<BirinciViewModel>(context,listen: false);
    return ElevatedButton(
      onPressed: (){
        viewModel.ikinciSayfayiAc(context);
      }, 
      child: const Text("İkinci Sayfayı Aç"),
    );
  }
}
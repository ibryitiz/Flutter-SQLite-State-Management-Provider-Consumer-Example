import 'package:flutter/material.dart';
import 'package:my_flutter_project/view/yonlendirme_butonu.dart';
import 'package:my_flutter_project/view_model/birinci_sayfa_view_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class BirinciSayfa extends StatefulWidget {

  @override
  State<BirinciSayfa> createState() => _BirinciSayfaState();
}

class _BirinciSayfaState extends State<BirinciSayfa> {

  @override
  Widget build(BuildContext context) {
    return Consumer<BirinciViewModel>(
      builder: (context , viewModel , child){
        return Scaffold(
          backgroundColor: viewModel.renk,
          appBar: AppBar(
            title: const Text("Birinci Sayfa"),
          ),
          body: child,
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           const FlutterLogo(size: 96,),
          _buildBaslik(),
          _buildYaziyiDegistirButton(context),
          _buildCheckboxRow(context),
          _buildRenkDegistirButton(),
          const YonlendirmeButonu(),
        ],
      ),
    );
  }

  Widget _buildBaslik() {
    return Consumer<BirinciViewModel>(
      builder: (context, viewModel, child){
        return Text(
          viewModel.yazi,
          style: TextStyle(fontSize: 28),
        );
      },
    );
  }

  Widget _buildYaziyiDegistirButton(BuildContext context) {
    BirinciViewModel viewModel = Provider.of<BirinciViewModel>(context,listen: false);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){
          viewModel.yazi = "Butona Tıklandı";
        }, 
        child: const Text("Yazıyı Değiştir"),
      ),
    );
  }

  Widget _buildCheckboxRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Checkbox", style: TextStyle(fontSize:18 ),),
        Consumer<BirinciViewModel>(builder: (context , viewModel, child){
          return Checkbox(
          value: viewModel.checkboxSeciliMi, 
          onChanged: (bool? yeniDeger){
            if (yeniDeger != null) {
              viewModel.checkboxSeciliMi = yeniDeger;
                };
              },
            );
          }
        )
      ],
    );
  }
  
  Widget _buildRenkDegistirButton() {
    BirinciViewModel viewModel = Provider.of<BirinciViewModel>(context);
    return ElevatedButton(
          onPressed: (){
              viewModel.renk = Colors.black;

            }, 
          child: const Text("Renk Degistir")
        );
  }
}
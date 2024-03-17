import 'package:flutter/material.dart';
import 'package:my_flutter_project/model/siparis.dart';

import 'package:my_flutter_project/view_model/ikinci_sayfa_view_model.dart';
import 'package:provider/provider.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İkinci Sayfa"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return Consumer<IkinciViewModel>(builder: (context, viewModel, child) {
      return ListView.builder(
      itemCount: viewModel.siparisler.length,
      itemBuilder: (context, index) {
            return ChangeNotifierProvider.value(
              value: viewModel.siparisler[index],
              child: _buildListItem(), 
            );
          },
        );
      },
    );
  }
  
  Widget _buildListItem() {
    return Consumer<Siparis>(builder: (context, siparis, child) {
        return  ListTile(
          title: Text(siparis.baslik),
          subtitle: Text(siparis.durum),
          onTap: () {
            siparis.siparisOnayla();
          },
        );
      },
    );
  }
}
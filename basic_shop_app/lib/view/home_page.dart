import 'package:basic_shop_app/model/urun.dart';
import 'package:basic_shop_app/viewModel/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageViewModel>(
      builder: (context, viewModel, child) {
        return _buildListView(viewModel);
      },
    );
  }

  Widget _buildListView(HomePageViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.urunler.length,
      itemBuilder: (context, index) {
        return _buildMyListTile(context, viewModel, index);
      },
    );
  }

  Widget _buildMyListTile(BuildContext context, HomePageViewModel viewModel, int index) {
    var urun = viewModel.urunler[index];
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.all(29),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: _buildMyProductRow(context, urun, index),
      ),
    );
  }

  Widget _buildMyProductRow(BuildContext context, Urun urun, int index) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "lib/images/${urun.urunResim}",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                urun.urunAd,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),
              Text(
                "${urun.urunFiyat}\$",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        IconButton(
          onPressed: () {
            Provider.of<HomePageViewModel>(context, listen: false).detaylarSayfasiniAc(context, index);
          },
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.grey.shade600,
            size: 25,
          ),
        ),
      ],
    );
  }
}

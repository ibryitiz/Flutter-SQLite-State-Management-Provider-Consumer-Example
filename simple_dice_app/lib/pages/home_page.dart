import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_dice_app/consts.dart';
import 'package:simple_dice_app/provider/dice_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 32, 4, 61), Color.fromARGB(255, 143, 38, 188)], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: MyConsts.myPadding,
        child: GestureDetector(
          onTap: () {
            DiceProvider viewModel = Provider.of<DiceProvider>(context, listen: false);
            viewModel.changeImage();
          },
          child: _buildImages(),
        ),
      ),
    );
  }

  Widget _buildImages() {
    return Consumer<DiceProvider>(
      builder: (context, viewModel, child) {
        return Image.asset(
          viewModel.images[viewModel.seciliIndex],
          fit: BoxFit.cover,
          width: 200,
        );
      },
    );
  }
}

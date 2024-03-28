import 'package:basic_shop_app/components/my_button.dart';
import 'package:basic_shop_app/viewModel/details_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: _buildAppBar(context),
      body: _buildBody(
        context,
      ),
    );
  }

  AppBar _buildAppBar(
    BuildContext context,
  ) {
    DetailsPageViewModel model = Provider.of<DetailsPageViewModel>(context, listen: false);
    return AppBar(
      title: Text(
        model.urun.urunAd,
      ),
      titleTextStyle: TextStyle(color: Colors.brown.shade400, fontSize: 24, fontWeight: FontWeight.bold),
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildImage(context),
        _buildQuantity(context),
        _buildSize(context),
        _buildButtonAddCart(context),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildImage(BuildContext context) {
    DetailsPageViewModel viewModel = Provider.of<DetailsPageViewModel>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "lib/images/${viewModel.urun.urunResim}",
        ),
      ),
    );
  }

  Widget _buildQuantity(BuildContext context) {
    return Consumer<DetailsPageViewModel>(
      builder: (context, viewModel, child) {
        return Expanded(
          child: Column(
            children: [
              Text(
                "Q U A N T I T Y",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 21, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        viewModel.decrease();
                      },
                      icon: const Icon(
                        Icons.remove,
                      )),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Text(
                      viewModel.value.toString(),
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        viewModel.increase();
                      },
                      icon: const Icon(
                        Icons.add,
                      ))
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSize(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "S I Z E",
            style: TextStyle(color: Colors.grey.shade500, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          _buildSizeRow(),
        ],
      ),
    );
  }

  Widget _buildButtonAddCart(BuildContext context) {
    return MyButton(
      onTap: () {},
      text: "Add to Cart",
      color: Colors.brown,
      textColor: Colors.white,
    );
  }

  Widget _buildSizeRow() {
    return Consumer<DetailsPageViewModel>(
      builder: (context, model, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                model.onTap();
              },
              child: CircleAvatar(
                backgroundColor: model.tap ? Colors.brown : Colors.white,
                child: Text(model.sizes[0],
                    style: TextStyle(
                      color: model.tap ? Colors.white : Colors.grey.shade700,
                    )),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                model.onTap2();
              },
              child: CircleAvatar(
                backgroundColor: model.tap2 ? Colors.brown : Colors.white,
                child: Text(model.sizes[1],
                    style: TextStyle(
                      color: model.tap2 ? Colors.white : Colors.grey.shade700,
                    )),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                model.onTap3();
              },
              child: CircleAvatar(
                backgroundColor: model.tap3 ? Colors.brown : Colors.white,
                child: Text(
                  model.sizes[2],
                  style: TextStyle(
                    color: model.tap3 ? Colors.white : Colors.grey.shade700,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

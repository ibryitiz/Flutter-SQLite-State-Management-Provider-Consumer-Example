import 'package:basic_shop_app/components/my_drawer_tile.dart';
import 'package:basic_shop_app/intro_screen.dart';
import 'package:basic_shop_app/view/about_page.dart';
import 'package:basic_shop_app/viewModel/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: _buildAppbar(context),
          body: viewModel.sayfalar[viewModel.selectedIndex],
          drawer: _buildDrawer(context),
          bottomNavigationBar: _buildBottomNavigationBar(context),
        );
      },
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.grey.shade700, size: 27),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.coffee,
              size: 80,
              color: Colors.grey.shade700,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Divider(
              color: Colors.white,
            ),
          ),
          // home list tile
          MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // setting list tile
          MyDrawerTile(
            text: "A B O U T",
            icon: Icons.info,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ));
            },
          ),

          const Spacer(),
          // logout list tile
          MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.login,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IntroScreen(),
                  ));
            },
          ),

          const SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    HomePageViewModel viewModel = Provider.of<HomePageViewModel>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BottomNavigationBar(
          currentIndex: viewModel.selectedIndex,
          onTap: (index) {
            viewModel.selectedIndex = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Shop",
            ),
          ],
          backgroundColor: Colors.grey.shade100,
          selectedItemColor: Colors.grey.shade700,
          unselectedItemColor: Colors.grey.shade400,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 20,
          selectedIconTheme: const IconThemeData(size: 28),
          type: BottomNavigationBarType.shifting,
          elevation: 10,
        ),
      ),
    );
  }
}

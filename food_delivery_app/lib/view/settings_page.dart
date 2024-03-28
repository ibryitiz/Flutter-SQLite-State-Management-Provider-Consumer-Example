import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      body: _buildBody(context),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
  
 AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      title: const Text("Settings"),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
  
  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12)
          ),
          margin: const EdgeInsets.only(left: 25,top: 10,right: 25),
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // dark mode
              Text(
                "Dark Mode",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
          
              // switch
              CupertinoSwitch(
                value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode, 
                onChanged: (value) =>  Provider.of<ThemeProvider>(context,listen: false).toggleTheme(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
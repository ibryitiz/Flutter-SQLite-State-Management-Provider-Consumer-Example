import 'package:basic_shop_app/auth/login_or_register.dart';
import 'package:basic_shop_app/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Image.asset("lib/images/kahvesaati.jpg"),
        MyButton(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginOrRegister(),
                ));
          },
          text: "Get Started",
          color: Colors.white,
          textColor: Colors.grey.shade700,
        ),
      ],
    );
  }
}

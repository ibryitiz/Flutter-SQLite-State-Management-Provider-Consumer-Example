import 'package:basic_shop_app/components/my_button.dart';
import 'package:basic_shop_app/components/my_textfield.dart';
import 'package:basic_shop_app/view/bottom.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Colors.grey.shade700,
            ),

            const SizedBox(
              height: 25,
            ),
            //message, app slogan

            Text(
              "Coffee Shop App",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),

            const SizedBox(
              height: 25,
            ),

            // email Textfield
            MyTextField(controller: emailController, hintText: "Email", obscureText: false),

            const SizedBox(
              height: 10,
            ),

            // password Textfield
            MyTextField(controller: passwordController, hintText: "Password", obscureText: true),

            const SizedBox(
              height: 10,
            ),

            // sign in button
            MyButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Bottom(),
                    ));
              },
              text: "Get Started",
              color: Colors.white,
              textColor: Colors.grey.shade700,
            ),
            const SizedBox(
              height: 25,
            ),
            // not a member?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register Now",
                    style: TextStyle(color: Colors.grey.shade900, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

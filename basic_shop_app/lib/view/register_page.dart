import 'package:basic_shop_app/components/my_button.dart';
import 'package:basic_shop_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
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
              height: 20,
            ),
            //message, app slogan

            Text(
              "Let's create an account for you",
              style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
            ),

            const SizedBox(
              height: 20,
            ),
            // name textfield
            MyTextField(controller: nameController, hintText: "Name", obscureText: false),
            const SizedBox(
              height: 10,
            ),
            // surname textfield
            MyTextField(controller: surnameController, hintText: "Surname", obscureText: false),
            const SizedBox(
              height: 10,
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

            // confirm password

            const SizedBox(
              height: 15,
            ),

            // sign up button
            MyButton(
              onTap: () {},
              text: "Get Started",
              color: Colors.white,
              textColor: Colors.grey.shade700,
            ),
            const SizedBox(
              height: 25,
            ),

            // already have an acoount? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an acoount?",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login Now",
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

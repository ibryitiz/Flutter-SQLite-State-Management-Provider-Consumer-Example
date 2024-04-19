import 'package:flutter/material.dart';
import 'package:flutter_application/utils/style/my_colors.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final void Function()? onPressed;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: _inputDecoration(hintText, onPressed),
    );
  }
}

InputDecoration _inputDecoration(hintText, onPressed) => InputDecoration(
      fillColor: MyColors.textFieldBackgroundColor,
      filled: true,
      border: _outlineInputBorder,
      hintText: hintText,
      suffixIcon: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.add,
        ),
      ),
    );
OutlineInputBorder get _outlineInputBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );

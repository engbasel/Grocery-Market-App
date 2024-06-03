import 'package:flutter/material.dart';

class customTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? prefixIcon;
  final TextEditingController? controller;

  const customTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

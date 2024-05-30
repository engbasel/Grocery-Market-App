import 'package:flutter/material.dart';

class CustomNavigationButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomNavigationButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffe3f4ed),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xff5ec401),
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}

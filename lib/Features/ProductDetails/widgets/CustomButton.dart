import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  double width;
  double height;
  int color;
  String titleButton;
  IconData? iconButton;

  CustomButton({
    super.key,
    required this.color,
    required this.height,
    required this.onTap,
    this.iconButton,
    required this.titleButton,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(color), // Use Color constructor to convert int to Color
        ),
        child: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 133), //
              Text(
                titleButton // Use null-aware operator to handle null titleButton
                ,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                  width: 80), // Adjust spacing according to your needs
              Icon(
                iconButton,
                color: Colors.white,
                size: 20, // Use size instead of weight for icon size
              ),
            ],
          ),
        ),
      ),
    );
  }
}

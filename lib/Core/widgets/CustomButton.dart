import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final double? widthInFirstOfContainer;
  final double? widthBetweenItems;
  final double? widthAtFirstOfButton;
  final int color;
  final String? titleButton;
  final IconData? iconButtonAtEnd;
  final IconData? iconButtonAtFirst;
  Color? TextColor;

  CustomButton({
    super.key,
    required this.color,
    this.height,
    this.onTap,
    this.titleButton,
    this.width,
    this.widthBetweenItems,
    this.widthInFirstOfContainer,
    this.iconButtonAtEnd,
    this.iconButtonAtFirst,
    this.widthAtFirstOfButton,
    this.TextColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(color),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(width: widthAtFirstOfButton ?? 0),
              if (iconButtonAtFirst != null)
                Icon(
                  iconButtonAtFirst,
                  color: Colors.white,
                  size: 20,
                ),
              SizedBox(width: widthInFirstOfContainer ?? 0),
              Text(
                titleButton ?? '',
                style: TextStyle(
                  color: TextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: widthBetweenItems ?? 0),
              if (iconButtonAtEnd != null)
                Icon(
                  iconButtonAtEnd,
                  color: Colors.white,
                  size: 20,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

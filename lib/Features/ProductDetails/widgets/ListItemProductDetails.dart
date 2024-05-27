import 'package:flutter/material.dart';

class ProductImageListItem extends StatelessWidget {
  final String imageLink;
  final double? width;
  final double? height;
  final VoidCallback onTap;

  const ProductImageListItem({
    super.key,
    this.height,
    this.width,
    required this.imageLink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Image.asset(
          imageLink,
          height: height,
          width: width,
        ),
      ),
    );
  }
}

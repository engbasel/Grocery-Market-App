import 'package:flutter/material.dart';

class ListItemProductDetails extends StatelessWidget {
  String ImageLink;
  double? width, height;
  VoidCallback onTap;

  ListItemProductDetails({
    super.key,
    this.height,
    this.width,
    required this.ImageLink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Image.asset(
          ImageLink,
          height: height,
          width: width,
        ),
      ),
    );
  }
}

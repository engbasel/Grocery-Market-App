import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData? icon;
  final IconData? Leadingicon;
  final VoidCallback onTap;
  final VoidCallback? LeadingFunction;
  MainAxisAlignment? place;

  CustomAppBar({
    super.key,
    this.place,
    this.Leadingicon,
    required this.title,
    this.icon,
    required this.onTap,
    this.LeadingFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: LeadingFunction,
            icon: Icon(Leadingicon),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          IconButton(
            onPressed: onTap,
            icon: Icon(icon),
          ),
        ],
      ),
    );
  }
}

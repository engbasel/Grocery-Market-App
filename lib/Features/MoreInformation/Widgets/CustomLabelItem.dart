import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomLabelItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final bool isSelected;
  final VoidCallback? onTap;

  const CustomLabelItem({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
            height: 50,
          ),
          const SizedBox(width: 9),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FaIcon(
              icon,
              size: 18,
              color: isSelected ? Colors.green : color,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.green : Colors.black,
              fontSize: 14,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget {
//   final String title;
//   final IconData? icon;
//   final IconData? Leadingicon;
//   final VoidCallback onTap;
//   final VoidCallback? LeadingFunction;
//   MainAxisAlignment? place;
//   double? horizontal, vertical;

//   CustomAppBar({
//     super.key,
//     this.horizontal,
//     this.vertical,
//     this.place,
//     this.Leadingicon,
//     required this.title,
//     this.icon,
//     required this.onTap,
//     this.LeadingFunction,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
//       child: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           IconButton(
//             onPressed: LeadingFunction,
//             icon: Icon(Leadingicon),
//           ),
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//           IconButton(
//             onPressed: onTap,
//             icon: Icon(icon),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData? icon;
  final IconData? leadingIcon;
  final VoidCallback onTap;
  final VoidCallback? leadingFunction;
  final MainAxisAlignment mainAxisAlignment;
  final double horizontalPadding;
  final double verticalPadding;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
    this.leadingIcon,
    this.leadingFunction,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.horizontalPadding = 16.0,
    this.verticalPadding = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      child: Row(
        // mainAxisAlignment: mainAxisAlignment,
        children: [
          if (leadingIcon != null)
            IconButton(
              onPressed: leadingFunction,
              icon: Icon(leadingIcon),
            ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          if (icon != null)
            IconButton(
              onPressed: onTap,
              icon: Icon(icon),
            ),
        ],
      ),
    );
  }
}

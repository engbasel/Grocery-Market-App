// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget {
//   final String title;
//   final IconData? icon;
//   final IconData? leadingIcon;
//   final VoidCallback onTap;
//   final VoidCallback? leadingFunction;
//   final MainAxisAlignment mainAxisAlignment;
//   final double horizontalPadding;
//   final double verticalPadding;

//   const CustomAppBar({
//     super.key,
//     required this.title,
//     required this.onTap,
//     this.icon,
//     this.leadingIcon,
//     this.leadingFunction,
//     this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
//     this.horizontalPadding = 16.0,
//     this.verticalPadding = 8.0,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//           horizontal: horizontalPadding, vertical: verticalPadding),
//       child: Row(
//         // mainAxisAlignment: mainAxisAlignment,
//         children: [
//           if (leadingIcon != null)
//             IconButton(
//               onPressed: leadingFunction,
//               icon: Icon(leadingIcon),
//             ),
//           Text(
//             title,
//             style: const TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//           if (icon != null)
//             IconButton(
//               onPressed: onTap,
//               icon: Icon(icon),
//             ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;
  final IconData? leadingIcon;
  final VoidCallback onTap;
  final VoidCallback? leadingFunction;
  final double horizontalPadding;
  final double verticalPadding;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
    this.leadingIcon,
    this.leadingFunction,
    this.horizontalPadding = 16.0,
    this.verticalPadding = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: leadingIcon != null
          ? IconButton(
              onPressed: leadingFunction,
              icon: Icon(leadingIcon),
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      actions: [
        if (icon != null)
          IconButton(
            onPressed: onTap,
            icon: Icon(icon),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

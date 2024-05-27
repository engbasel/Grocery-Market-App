// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   VoidCallback? onTap;
//   double? width;
//   double? height;
//   double? widthinFirstofContainer, widthbetweenItems, WidthAtFirstOFButton;
//   int color;
//   String? titleButton;
//   IconData? iconButtonAtend;
//   IconData? IconButtonAtFirst;

//   CustomButton({
//     super.key,
//     required this.color,
//     this.height,
//     this.onTap,
//     this.titleButton,
//     this.width,
//     this.widthbetweenItems,
//     this.widthinFirstofContainer,
//     this.iconButtonAtend,
//     this.IconButtonAtFirst,
//     this.WidthAtFirstOFButton,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: width,
//         height: height,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           color: Color(color), // Use Color constructor to convert int to Color
//         ),
//         child: Center(
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(width: WidthAtFirstOFButton), //
//               Icon(
//                 IconButtonAtFirst,
//                 color: Colors.white,
//                 size: 20, // Use size instead of weight for icon size
//               ),
//               SizedBox(width: widthinFirstofContainer), //
//               Text(
//                 titleButton,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               SizedBox(
//                   width:
//                       widthbetweenItems), // Adjust spacing according to your needs
//               Icon(
//                 iconButtonAtend,
//                 color: Colors.white,
//                 size: 20, // Use size instead of weight for icon size
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

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

  const CustomButton({
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
                style: const TextStyle(
                  color: Colors.white,
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

// import 'package:flutter/material.dart';

// class CustomNavigationButton extends StatelessWidget {
//   final Color? color;
//   final Color? textColors;
//   final Widget? child;
//   final String text;
//   final VoidCallback onTap;
//   double? width, height;

//   CustomNavigationButton({
//     super.key,
//     this.color,
//     this.textColors,
//     this.child,
//     required this.text,
//     required this.onTap,
//     this.height,
//     this.width,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: width,
//         height: height,
//         decoration: color != null
//             ? BoxDecoration(
//                 color: color,
//                 borderRadius: BorderRadius.circular(10),
//               )
//             : BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//         child: Center(
//           child: child ??
//               Text(
//                 text,
//                 style: TextStyle(
//                   color: textColors ?? Colors.black,
//                 ),
//               ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? buttonColor;
  final Color? textColor;
  final Widget? child;
  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    this.buttonColor,
    this.textColor,
    this.child,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: child ??
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                ),
              ),
        ),
      ),
    );
  }
}

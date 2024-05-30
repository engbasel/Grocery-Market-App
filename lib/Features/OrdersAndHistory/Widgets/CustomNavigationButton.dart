// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class CustomNavigationButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;
//   Color Colorcontainer;
//   Color textColors;

//   CustomNavigationButton({
//     super.key,
//     required this.text,
//     required this.onTap,
//     required this.Colorcontainer,
//     required this.textColors,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         color: Colorcontainer,
//         width: 350,
//         height: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: const Color(0xffe3f4ed),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color: textColors,
//               fontWeight: FontWeight.w500,
//               fontSize: 15,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationButton extends StatelessWidget {
  final Color? color;
  final Color? textColors;
  final Widget? child;
  final String text;
  final VoidCallback onTap;

  const CustomNavigationButton({
    super.key,
    this.color,
    this.textColors,
    this.child,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: color != null
            ? BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
        child: Center(
          child: child ??
              Text(
                text,
                style: TextStyle(
                  color: textColors ?? Colors.black,
                ),
              ),
        ),
      ),
    );
  }
}

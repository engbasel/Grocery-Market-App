// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class CustomNotificationItem extends StatelessWidget {
//   final String orderNumber;
//   final String orderStatus;
//   final String time;
//   final Color backgroundColor;
//   final Color avatarColor;

//   const CustomNotificationItem({
//     super.key,
//     required this.orderNumber,
//     required this.orderStatus,
//     required this.time,
//     required this.backgroundColor,
//     required this.avatarColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       width: 340,
//       decoration: BoxDecoration(
//         color: backgroundColor,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     orderNumber,
//                     overflow: TextOverflow.clip,
//                     softWrap: true,
//                   ),
//                   Text(
//                     orderStatus,
//                     overflow: TextOverflow.clip,
//                     softWrap: true,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 5),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(time),
//                 CircleAvatar(
//                   child: FontAwesomeIcons.list,
//                   backgroundColor: avatarColor,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotificationItem extends StatelessWidget {
  final String orderNumber;
  final String orderStatus;
  final String time;
  final Color backgroundColor;
  final Color avatarColor;
  final IconData avatarIcon;
  final double sizeIcon;

  const CustomNotificationItem({
    super.key,
    required this.orderNumber,
    required this.sizeIcon,
    required this.orderStatus,
    required this.time,
    required this.backgroundColor,
    required this.avatarColor,
    required this.avatarIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 340,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderNumber,
                    overflow: TextOverflow.clip,
                    softWrap: true,
                  ),
                  Text(
                    orderStatus,
                    overflow: TextOverflow.clip,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(time),
                CircleAvatar(
                  backgroundColor: avatarColor,
                  child: Icon(
                    size: sizeIcon,
                    avatarIcon,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

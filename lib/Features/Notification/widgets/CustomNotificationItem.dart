// import 'package:flutter/material.dart';

// class CustomNotificationItem extends StatelessWidget {
//   final String orderNumber;
//   final String orderStatus;
//   final String time;
//   final Color backgroundColor;
//   final Color avatarColor;
//   final IconData avatarIcon;
//   final double sizeIcon;

//   const CustomNotificationItem({
//     super.key,
//     required this.orderNumber,
//     required this.sizeIcon,
//     required this.orderStatus,
//     required this.time,
//     required this.backgroundColor,
//     required this.avatarColor,
//     required this.avatarIcon,
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
//                   backgroundColor: avatarColor,
//                   child: Icon(
//                     size: sizeIcon,
//                     avatarIcon,
//                     color: Colors.white,
//                   ),
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

class NotificationItem extends StatelessWidget {
  final String orderNumber;
  final String orderStatus;
  final String time;
  final Color backgroundColor;
  final Color avatarColor;
  final IconData avatarIcon;
  final double sizeIcon;

  const NotificationItem({
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
    return Dismissible(
      key: Key(orderNumber), // Unique key for each item
      onDismissed: (_) {
        // Implement your delete logic here
        // You may want to remove the item from a list and update the UI
      },
      direction: DismissDirection.endToStart, // Swipe from right to left
      background: Container(
        color: Colors.red, // Background color when swiping
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20.0),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Container(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                      avatarIcon,
                      size: sizeIcon,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressItem extends StatelessWidget {
  final String homeText;
  final String addressText;
  final VoidCallback? onEditTap;
  final VoidCallback? onDeleteTap;

  const AddressItem({
    super.key,
    required this.homeText,
    required this.addressText,
    this.onEditTap,
    this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              homeText,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              addressText,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(width: width * 0.1),
        GestureDetector(
          onTap: onEditTap,
          child: const CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(
              FontAwesomeIcons.pen,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: width * 0.05),
        GestureDetector(
          onTap: onDeleteTap,
          child: const CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.playlist_remove,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

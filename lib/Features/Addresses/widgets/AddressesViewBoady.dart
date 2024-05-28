import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

class AddressesViewBoady extends StatelessWidget {
  const AddressesViewBoady({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackgroundScaffold(
      children: [
        CustomAppBar(
          title: 'My Addresses',
          onTap: () {},
          leadingIcon: Icons.arrow_back,
          leadingFunction: () {
            Navigator.pop(context);
          },
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: CustomAddressItem(
            onDeleteTap: () {},
            onEditTap: () {},
            addressText: '51/5A, Road: 7, Pallabi, Dhaka',
            homeText: 'Home',
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: CustomAddressItem(
            onDeleteTap: () {},
            onEditTap: () {},
            addressText: '51/5A, Road: 7, Pallabi, Dhaka',
            homeText: 'Home',
          ),
        ),
        const Divider(),
      ],
    );
  }
}

class CustomAddressItem extends StatelessWidget {
  final String homeText;
  final String addressText;
  final VoidCallback? onEditTap;
  final VoidCallback? onDeleteTap;

  const CustomAddressItem({
    super.key,
    required this.homeText,
    required this.addressText,
    this.onEditTap,
    this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment:
          MainAxisAlignment.start, // Align items at the start of the row
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              homeText,
              style: const TextStyle(
                  fontWeight: FontWeight
                      .bold), // Added style to emphasize required fields
            ),
            Text(
              addressText,
              style: const TextStyle(
                  fontWeight: FontWeight
                      .bold), // Added style to emphasize required fields
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
              size: 20, // sSpecify the FontAwesomeIcons icon you want
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: width * 0.05), // Add spacing between avatars
        GestureDetector(
          onTap: onDeleteTap,
          child: const CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons
                  .playlist_remove, // Specify the FontAwesomeIcons icon you want
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
//  pin

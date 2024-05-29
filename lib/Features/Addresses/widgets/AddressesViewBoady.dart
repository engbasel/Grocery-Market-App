// import 'package:flutter/material.dart';
// import 'package:grocerymarket/Core/widgets/customBackground.dart';
// import 'package:grocerymarket/Features/Addresses/widgets/CustomAddressItem.dart';
// import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

// class AddressesViewBoady extends StatelessWidget {
//   const AddressesViewBoady({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GradientBackgroundScaffold(
//       children: [
//         CustomAppBar(
//           title: 'My Addresses',
//           onTap: () {},
//           leadingIcon: Icons.arrow_back,
//           leadingFunction: () {
//             Navigator.pop(context);
//           },
//         ),
//         const Divider(),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//           child: CustomAddressItem(
//             onDeleteTap: () {},
//             onEditTap: () {},
//             addressText: '51/5A, Road: 7, Pallabi, Dhaka',
//             homeText: 'Home',
//           ),
//         ),
//         const Divider(),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//           child: CustomAddressItem(
//             onDeleteTap: () {},
//             onEditTap: () {},
//             addressText: '51/5A, Road: 7, Pallabi, Dhaka',
//             homeText: 'Home',
//           ),
//         ),
//         const Divider(),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Addresses/widgets/CustomAddressItem.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

class AddressesViewBoady extends StatefulWidget {
  const AddressesViewBoady({super.key});

  @override
  _AddressesViewBoadyState createState() => _AddressesViewBoadyState();
}

class _AddressesViewBoadyState extends State<AddressesViewBoady> {
  List<Map<String, String>> addresses = [
    {
      'homeText': 'Home',
      'addressText': '51/5A, Road: 7, Pallabi, Dhaka',
    },
    {
      'homeText': 'Home',
      'addressText': '51/5A, Road: 7, Pallabi, Dhaka',
    },
  ];

  void _deleteAddress(int index) {
    setState(() {
      addresses.removeAt(index);
    });
  }

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
        ...addresses.asMap().entries.map((entry) {
          int index = entry.key;
          Map<String, String> address = entry.value;
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: CustomAddressItem(
                  onDeleteTap: () => _deleteAddress(index),
                  onEditTap: () {},
                  addressText: address['addressText']!,
                  homeText: address['homeText']!,
                ),
              ),
              const Divider(),
            ],
          );
        }),
      ],
    );
  }
}

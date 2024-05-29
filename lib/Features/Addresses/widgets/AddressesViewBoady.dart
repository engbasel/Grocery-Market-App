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

// import 'package:flutter/material.dart';
// import 'package:grocerymarket/Core/widgets/customBackground.dart';
// import 'package:grocerymarket/Features/Addresses/widgets/CustomAddressItem.dart';
// import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

// class AddressesViewBoady extends StatefulWidget {
//   const AddressesViewBoady({super.key});

//   @override
//   _AddressesViewBoadyState createState() => _AddressesViewBoadyState();
// }

// class _AddressesViewBoadyState extends State<AddressesViewBoady> {
//   List<Map<String, String>> addresses = [
//     {
//       'homeText': 'Home',
//       'addressText': '51/5A, Road: 7, Pallabi, Dhaka',
//     },
//     {
//       'homeText': 'Home',
//       'addressText': '51/5A, Road: 7, Pallabi, Dhaka',
//     },
//   ];

//   void _deleteAddress(int index) {
//     setState(() {
//       addresses.removeAt(index);
//     });
//   }

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
//         ...addresses.asMap().entries.map((entry) {
//           int index = entry.key;
//           Map<String, String> address = entry.value;
//           return Column(
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                 child: CustomAddressItem(
//                   onDeleteTap: () => _deleteAddress(index),
//                   onEditTap: () {},
//                   addressText: address['addressText']!,
//                   homeText: address['homeText']!,
//                 ),
//               ),
//               const Divider(),
//             ],
//           );
//         }),
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

  void _addAddress(Map<String, String> newAddress) {
    setState(() {
      addresses.add(newAddress);
    });
  }

  void _showAddAddressDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddAddressDialog(onAdd: _addAddress);
      },
    );
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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: _showAddAddressDialog,
            child: const Text('Add Address'),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

class AddAddressDialog extends StatefulWidget {
  final Function(Map<String, String>) onAdd;

  const AddAddressDialog({super.key, required this.onAdd});

  @override
  _AddAddressDialogState createState() => _AddAddressDialogState();
}

class _AddAddressDialogState extends State<AddAddressDialog> {
  final TextEditingController _homeTextController = TextEditingController();
  final TextEditingController _addressTextController = TextEditingController();

  void _handleAdd() {
    final homeText = _homeTextController.text;
    final addressText = _addressTextController.text;

    if (homeText.isNotEmpty && addressText.isNotEmpty) {
      widget.onAdd({
        'homeText': homeText,
        'addressText': addressText,
      });
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Address'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _homeTextController,
            decoration: const InputDecoration(labelText: 'Home Text'),
          ),
          TextField(
            controller: _addressTextController,
            decoration: const InputDecoration(labelText: 'Address Text'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _handleAdd,
          child: const Text('Add'),
        ),
      ],
    );
  }
}

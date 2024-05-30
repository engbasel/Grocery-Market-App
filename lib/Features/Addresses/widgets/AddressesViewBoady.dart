import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Addresses/widgets/AddEditAddressDialog.dart';
import 'package:grocerymarket/Features/Addresses/widgets/CustomAddressItem.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

class AddressesViewBody extends StatefulWidget {
  const AddressesViewBody({super.key});

  @override
  _AddressesViewBodyState createState() => _AddressesViewBodyState();
}

class _AddressesViewBodyState extends State<AddressesViewBody> {
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

  void _editAddress(int index, Map<String, String> editedAddress) {
    setState(() {
      addresses[index] = editedAddress;
    });
  }

  void _showAddAddressDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddEditAddressDialog(
          onSubmit: _addAddress,
        );
      },
    );
  }

  void _showEditAddressDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddEditAddressDialog(
          address: addresses[index],
          onSubmit: (editedAddress) => _editAddress(index, editedAddress),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

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
                child: AddressItem(
                  onDeleteTap: () => _deleteAddress(index),
                  onEditTap: () => _showEditAddressDialog(index),
                  addressText: address['addressText']!,
                  homeText: address['homeText']!,
                ),
              ),
              const Divider(),
            ],
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: CustomButton(
            widthAtFirstOfButton: width * 0.33,
            height: 55,
            color: 0xFF87DD39,
            onTap: _showAddAddressDialog,
            titleButton: 'Add Address',
          ),
        )
      ],
    );
  }
}

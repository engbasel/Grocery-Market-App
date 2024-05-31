import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/Addresses/widgets/AddEditAddressDialog.dart';
import 'package:grocerymarket/Features/Addresses/widgets/AddressItemWidget.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

class AddressesViewBody extends StatefulWidget {
  const AddressesViewBody({super.key});

  @override
  _AddressesViewBodyState createState() => _AddressesViewBodyState();
}

class _AddressesViewBodyState extends State<AddressesViewBody> {
  final List<Map<String, String>> _addresses = [
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
      _addresses.removeAt(index);
    });
  }

  void _addAddress(Map<String, String> newAddress) {
    setState(() {
      _addresses.add(newAddress);
    });
  }

  void _editAddress(int index, Map<String, String> editedAddress) {
    setState(() {
      _addresses[index] = editedAddress;
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
          address: _addresses[index],
          onSubmit: (editedAddress) => _editAddress(index, editedAddress),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Addresses',
        onTap: () {},
        leadingIcon: Icons.arrow_back,
        leadingFunction: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        children: [
          const Divider(),
          ..._addresses.asMap().entries.map((entry) {
            final index = entry.key;
            final address = entry.value;
            return AddressItemWidget(
              index: index,
              address: address,
              onDelete: _deleteAddress,
              onEdit: _showEditAddressDialog,
              width: width,
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
          ),
        ],
      ),
    );
  }
}

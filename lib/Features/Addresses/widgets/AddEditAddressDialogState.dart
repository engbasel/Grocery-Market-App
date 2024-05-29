import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Addresses/widgets/AddEditAddressDialog.dart';

class AddEditAddressDialogState extends State<AddEditAddressDialog> {
  late TextEditingController _homeTextController;
  late TextEditingController _addressTextController;

  @override
  void initState() {
    super.initState();
    _homeTextController =
        TextEditingController(text: widget.address?['homeText'] ?? '');
    _addressTextController =
        TextEditingController(text: widget.address?['addressText'] ?? '');
  }

  void _handleSubmit() {
    final homeText = _homeTextController.text;
    final addressText = _addressTextController.text;

    if (homeText.isNotEmpty && addressText.isNotEmpty) {
      widget.onSubmit({
        'homeText': homeText,
        'addressText': addressText,
      });
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.address == null ? 'Add Address' : 'Edit Address'),
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
          onPressed: _handleSubmit,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Addresses/widgets/AddEditAddressDialogState.dart';

class AddEditAddressDialog extends StatefulWidget {
  final Map<String, String>? address;
  final Function(Map<String, String>) onSubmit;

  const AddEditAddressDialog({super.key, this.address, required this.onSubmit});

  @override
  AddEditAddressDialogState createState() => AddEditAddressDialogState();
}

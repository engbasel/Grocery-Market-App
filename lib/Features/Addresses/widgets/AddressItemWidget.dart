import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Addresses/widgets/CustomAddressItem.dart';

class AddressItemWidget extends StatelessWidget {
  final int index;
  final Map<String, String> address;
  final Function(int) onDelete;
  final Function(int) onEdit;
  final double width;

  const AddressItemWidget({
    super.key,
    required this.index,
    required this.address,
    required this.onDelete,
    required this.onEdit,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: 10),
          child: AddressItem(
            onDeleteTap: () => onDelete(index),
            onEditTap: () => onEdit(index),
            addressText: address['addressText']!,
            homeText: address['homeText']!,
          ),
        ),
        const Divider(),
      ],
    );
  }
}

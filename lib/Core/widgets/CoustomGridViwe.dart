import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({super.key, required this.items});

  @override
  List items;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: const EdgeInsets.all(10),

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }
}

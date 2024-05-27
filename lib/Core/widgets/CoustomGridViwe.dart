import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List items;

  const CustomGridView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }
}

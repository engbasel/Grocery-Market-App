import 'package:flutter/material.dart';

class MoreInfoViewBodyMobile extends StatelessWidget {
  const MoreInfoViewBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Information - Mobile'),
      ),
      body: Center(
        child: Container(
          constraints:
              const BoxConstraints(maxWidth: 400), // Example constraint
          child: const Text(
              'This is the mobile layout with specific constraints.'),
        ),
      ),
    );
  }
}

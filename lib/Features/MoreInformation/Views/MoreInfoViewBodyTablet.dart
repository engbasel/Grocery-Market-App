import 'package:flutter/material.dart';

class MoreInfoViewBodyTablet extends StatelessWidget {
  const MoreInfoViewBodyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Information - Tablet'),
      ),
      body: Center(
        child: Container(
          constraints:
              const BoxConstraints(maxWidth: 800), // Example constraint
          child: const Text(
              'This is the tablet layout with specific constraints.'),
        ),
      ),
    );
  }
}

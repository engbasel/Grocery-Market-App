import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final String imagePath;
  final String textData;

  // Constructor with required parameters
  const CustomListItem({
    super.key,
    required this.imagePath,
    required this.textData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              // const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ), // Use the imagePath parameter
              Text(textData), // Use the textData parameter
            ],
          ),
        ),
      ),
    );
  }
}

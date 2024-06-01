import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListItem extends StatelessWidget {
  final String imagePath;
  final String View;
  final String textData;
  void Function()? onTap;

  //  ructor with required parameters
  CustomListItem({
    super.key,
    required this.imagePath,
    required this.View,
    required this.textData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, View);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                //   SizedBox(height: 5),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Image.asset(
                    width: width * 0.2,
                    height: height * 0.15,
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ), // Use the imagePath parameter
                Text(textData), // Use the textData parameter
              ],
            ),
          ),
        ),
      ),
    );
  }
}

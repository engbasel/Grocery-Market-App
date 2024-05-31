import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';

import '../../../Home/Widgets/CustomAppBar.dart';

class YourInformationView extends StatelessWidget {
  const YourInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomAppBar(
            title: 'Your Information',
            onTap: () {},
            leadingFunction: () {
              Navigator.pop(context);
            },
            leadingIcon: Icons.arrow_back,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'It looks like you don’t have an account with this number. Please provide some information for a secure service.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 80,
                  backgroundColor: const Color(0xffe3e5e6),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.camera),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  child: CustomButton(
                    widthBetweenItems: 50,
                    widthAtFirstOfButton: width * 0.1,
                    height: 50,
                    color: 0xff236cd9,
                    titleButton: 'Sync From Facebook',
                    iconButtonAtEnd: FontAwesomeIcons.facebook,
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: customTextFormField(
                    labelText: 'Full name',
                    hintText: 'Full name',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

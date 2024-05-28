import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

import '../widgets/FullNameField.dart';
import '../widgets/PasswordField.dart';
import '../widgets/PhoneNumberField.dart';

class EditProfileview extends StatelessWidget {
  const EditProfileview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackgroundWidget(
        children: [
          CustomAppBar(
            leadingIcon: Icons.arrow_back,
            leadingFunction: () {
              Navigator.pop(context);
            },
            title: 'Edit Profile',
            onTap: () {},
          ),
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/MoreInformation/Oval.png'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: PhoneNumberField(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: PasswordField(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: FullNameField(),
          ),
          const SizedBox(height: 250),
          CustomButton(
            width: 350,
            height: 50,
            text: 'Save',
            icon: Icons.save,
            onTap: () {
              print('Button tapped!');
            },
          ),
          const SizedBox(height: 25)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff5ec401),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 30),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            Icon(icon, color: Colors.white),
            const SizedBox(width: 50),
          ],
        ),
      ),
    );
  }
}

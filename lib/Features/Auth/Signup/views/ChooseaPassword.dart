import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/PasswordField.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

import '../../../../Core/widgets/CustomButton.dart';

class ChoosePasswordView extends StatelessWidget {
  final VoidCallback onTapNext;
  final PageController pageController;

  const ChoosePasswordView(
      {super.key, required this.onTapNext, required this.pageController});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        leadingFunction: () {},
        leadingIcon: Icons.password,
        title: 'Choose a Password',
        onTap: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'For security & safety, please choose a password',
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset('assets/Auth/Signup.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: PasswordField(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: PasswordField(),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            CustomButton(
              TextColor: Colors.white,
              width: width * 0.4,
              widthBetweenItems: width * 0.02,
              widthAtFirstOfButton: width * 0.1,
              height: 50,
              color: 0xff5ec401,
              titleButton: 'Next',
              iconButtonAtEnd: FontAwesomeIcons.arrowRight,
              onTap: () {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
            ),
            SizedBox(
              height: height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}

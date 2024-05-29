import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Auth/Signup/Widgets/YourInformation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Widgets/ChooseaPassword.dart';
import '../Widgets/EnterVerificationCode.dart';
import '../Widgets/Enterthepassword.dart';
import '../Widgets/mobilenumber.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: const [
                mobilenumber(),
                Enterthepassword(),
                EnterVerificationCode(),
                ChooseaPassword(),
                YourInformation()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: pageController, // PageController
              count: 5,
              effect: const WormEffect(), // Change the effect as needed
            ),
          ),
        ],
      ),
    );
  }
}

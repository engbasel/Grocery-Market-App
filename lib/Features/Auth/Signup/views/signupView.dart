import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Auth/Signup/views/YourInformationView.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'EnterVerificationCodeView.dart';
import 'ChooseaPassword.dart';
import 'MobileNumberView.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: const [
                MobileNumberView(),
                ChoosePasswordView(),
                EnterVerificationCodeView(),
                ChoosePasswordView(),
                YourInformationView(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: pageController, // PageController
              count: 5,
              effect: const WormEffect(
                dotColor: Color(0xffF37A20),
                activeDotColor: Color(0xff455a64),
              ), // Change the effect as needed
            ),
          ),
        ],
      ),
    );
  }
}

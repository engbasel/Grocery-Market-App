// import 'package:flutter/material.dart';
// import 'package:grocerymarket/Features/Auth/Signup/views/YourInformationView.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import 'EnterVerificationCodeView.dart';
// import 'ChooseaPassword.dart';
// import 'MobileNumberView.dart';

// class SignupView extends StatelessWidget {
//   final PageController pageController = PageController();

//   SignupView({super.key});
//   void nextPage(BuildContext context) {
//     pageController.nextPage(
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.ease,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final PageController pageController = PageController();

//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: pageController,
//               children: [
//                 YourInformationView(
//                     onTapNext: nextPage, pageController: pageController),
//                 const ChoosePasswordView(),
//                 const MobileNumberView(),
//                 const EnterVerificationCodeView(),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: SmoothPageIndicator(
//               controller: pageController, // PageController
//               count: 4,
//               effect: const WormEffect(
//                 dotHeight: 12.0,
//                 dotWidth: 12.0,
//                 spacing: 16.0,
//                 dotColor: Colors.grey,
//                 activeDotColor: Colors.green,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Auth/Signup/views/YourInformationView.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'EnterVerificationCodeView.dart';
import 'ChooseaPassword.dart';
import 'MobileNumberView.dart';

class SignupView extends StatelessWidget {
  final PageController pageController = PageController();

  SignupView({super.key});

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                YourInformationView(
                    onTapNext: nextPage, pageController: pageController),
                ChoosePasswordView(
                    onTapNext: nextPage, pageController: pageController),
                MobileNumberView(
                    onTapNext: nextPage, pageController: pageController),
                EnterVerificationCodeView(
                    onTapNext: nextPage, pageController: pageController),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: pageController, // PageController
              count: 4,
              effect: const WormEffect(
                dotHeight: 12.0,
                dotWidth: 12.0,
                spacing: 16.0,
                dotColor: Colors.grey,
                activeDotColor: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

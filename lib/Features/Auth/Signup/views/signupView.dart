// import 'package:flutter/material.dart';
// import 'package:grocerymarket/Features/Auth/Signup/views/YourInformationView.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import 'EnterVerificationCodeView.dart';
// import 'ChooseaPassword.dart';
// import 'MobileNumberView.dart';

// class SignupView extends StatelessWidget {
//   final PageController pageController = PageController();

//   SignupView({super.key});

//   void nextPage() {
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
//                     onTapNext: nextPage, pageController: pageController ,textEditingController: pageController,),
//                 ChoosePasswordView(
//                     onTapNext: nextPage, pageController: pageController),
//                 MobileNumberView(
//                     onTapNext: nextPage, pageController: pageController),
//                 EnterVerificationCodeView(
//                     onTapNext: nextPage, pageController: pageController),
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

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grocerymarket/Features/Auth/Signup/views/YourInformationView.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../Cubit/SignupStatus.dart';

// class SignupView extends StatelessWidget {
//   final PageController pageController = PageController();

//   SignupView({super.key});

//   void nextPage() {
//     pageController.nextPage(
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.ease,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => SignupCubit(),
//       child: Scaffold(
//         body: Column(
//           children: [
//             Expanded(
//               child: PageView(
//                 controller: pageController,
//                 children: [
//                   YourInformationView(
//                       textEditingController:
//                           BlocProvider.of<SignupCubit>(context)
//                               .signupWithEmailAndPassword(
//                                   email: email, password: password),
//                       onTapNext: nextPage,
//                       pageController: pageController),
//                   // Add other views here
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: SmoothPageIndicator(
//                 controller: pageController,
//                 count: 4,
//                 effect: const WormEffect(
//                   dotHeight: 12.0,
//                   dotWidth: 12.0,
//                   spacing: 16.0,
//                   dotColor: Colors.grey,
//                   activeDotColor: Colors.green,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:grocerymarket/Features/Auth/Signup/Cubit/SignupCubit.dart'; // Import your SignupCubit
import 'package:grocerymarket/Features/Auth/Signup/views/YourInformationView.dart';

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
    final SignupCubit signupCubit = BlocProvider.of<SignupCubit>(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                YourInformationView(
                  emailController: signupCubit.emailController,
                  passwordController: signupCubit.passwordController,
                  onTapNext: nextPage,
                ),
                // Add other views here
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: pageController,
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

import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';

class EnterVerificationCodeView extends StatelessWidget {
  final VoidCallback onTapNext;
  final PageController pageController;
  const EnterVerificationCodeView(
      {super.key, required this.onTapNext, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Image.asset(
              'assets/Auth/PhonneNumbericon.png',
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Enter Verification Code'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('We have sent SMS to:'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('01XXXXXXXXXX'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Text('Resend OTP'),
                SizedBox(width: 10),
                Text('Change Phone Number'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: PhoneNumberField(),
          ),
          ElevatedButton(
            onPressed: () {
              // pageController.nextPage(
              //   duration: const Duration(milliseconds: 500),
              //   curve: Curves.ease,
              // );
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const SplashScreenView();
                },
              ));
            },
            child: const Text('Go To Login '),
          ),
        ],
      ),
    );
  }
}

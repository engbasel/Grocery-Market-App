import 'package:flutter/material.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';

class MobileNumberView extends StatelessWidget {
  const MobileNumberView({super.key});

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
            child: Text('Enter your mobile number'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              'We need to verify you. We will send you a one time verification code.',
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: PhoneNumberField(),
          ),
        ],
      ),
    );
  }
}

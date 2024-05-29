import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';

import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';

class EnterVerificationCode extends StatelessWidget {
  const EnterVerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackgroundScaffold(
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
            child: Text('We have sent SMS to:. '),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('01XXXXXXXXXX '),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [Text('Resend OTP'), Text('Change Phone Number')],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: PhoneNumberField(),
          )
        ],
      ),
    );
  }
}

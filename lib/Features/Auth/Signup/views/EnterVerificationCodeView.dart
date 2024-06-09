import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/Splash/views/SplashScreenView.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';
import '../../../../Core/widgets/CustomButton.dart';

class EnterVerificationCodeView extends StatelessWidget {
  final VoidCallback onTapNext;
  final PageController pageController;
  const EnterVerificationCodeView(
      {super.key, required this.onTapNext, required this.pageController});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          SizedBox(
            height: height * 0.01,
          ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: CustomButton(
              TextColor: Colors.white,
              width: width * 0.5,
              widthBetweenItems: width * 0.1,
              widthAtFirstOfButton: width * 0.2,
              height: 50,
              color: 0xff5ec401,
              titleButton: 'Go To Login ',
              iconButtonAtEnd: FontAwesomeIcons.arrowRight,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SplashScreenView();
                  },
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

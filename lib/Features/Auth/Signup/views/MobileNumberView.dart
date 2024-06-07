import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/PhoneNumberField.dart';
import '../../../../Core/widgets/CustomButton.dart';

class MobileNumberView extends StatelessWidget {
  final VoidCallback onTapNext;
  final PageController pageController;
  const MobileNumberView(
      {super.key, required this.onTapNext, required this.pageController});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.25,
            width: width * 0.25,
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
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: PhoneNumberField(),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: CustomButton(
              TextColor: Colors.white,
              width: width * 0.5,
              widthBetweenItems: width * 0.1,
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
          ),
          // SizedBox(
          //   height: height * 0.1,
          // ),
        ],
      ),
    );
  }
}

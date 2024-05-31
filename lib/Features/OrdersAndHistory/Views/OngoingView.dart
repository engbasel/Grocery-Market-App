import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OngoingView extends StatelessWidget {
  const OngoingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/OrdersAndHistory/going.svg'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'There is no ongoing order right now. You can order from home',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

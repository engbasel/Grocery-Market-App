import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Core/widgets/customBackground.dart';

class Ongoingview extends StatelessWidget {
  const Ongoingview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GradientBackgroundScaffold(
        children: [
          SvgPicture.asset('assets/OrdersAndHistory/going.svg'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'There is n ongoing order right now. You can order from home',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          // Image.asset('assets/OrdersAndHistory/OrdersAndHist.png'),
        ],
      ),
    );
  }
}

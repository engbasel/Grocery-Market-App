import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

import '../../../Core/widgets/customBackground.dart';
import '../Widgets/NavigationLinesScreens.dart';

class ScheduledOrderViewOne extends StatelessWidget {
  const ScheduledOrderViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackgroundScaffold(
      children: [
        CustomAppBar(
          title: 'Order #345',
          onTap: () {},
          leadingIcon: Icons.arrow_back,
          leadingFunction: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Text(
                'Scheduled',
                style: TextStyle(color: Color(0xff37474F)),
              ),
              Spacer(),
              Text(
                '6:30 pm',
                style: TextStyle(color: Color(0xffF37A20)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.date_range),
              ),
              const Text(
                'March 5, 2019',
                style: TextStyle(
                  color: Color(0xff37474F),
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        const NavigationLinesScreens()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/ScheduledOrderViewOne.dart';

import '../../../Core/widgets/customBackground.dart';
import '../Widgets/CosutomHistoryITem.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GradientBackgroundScaffold(
        children: [
          const SizedBox(height: 15),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ScheduledOrderViewOne();
                    },
                  ),
                );
              },
              child: const CustomHistoryItem()),
          GestureDetector(onTap: () {}, child: const CustomHistoryItem()),
          GestureDetector(onTap: () {}, child: const CustomHistoryItem()),
          // const CustomHistoryItem(),
          // const CustomHistoryItem(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/PageViewOrders.dart';

import '../Widgets/CosutomHistoryITem.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 15),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PageViewOrders();
                      },
                    ),
                  );
                },
                child: const CustomHistoryItem()),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PageViewOrders();
                      },
                    ),
                  );
                },
                child: const CustomHistoryItem()),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PageViewOrders();
                      },
                    ),
                  );
                },
                child: const CustomHistoryItem()),
          ],
        ),
      ),
    );
  }
}

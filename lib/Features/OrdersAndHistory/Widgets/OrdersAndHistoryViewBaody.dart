import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/HistoryView.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/OngoingView.dart';

class OrdersAndHistoryViewBody extends StatelessWidget {
  const OrdersAndHistoryViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Orders'),
          bottom: const TabBar(
            automaticIndicatorColorAdjustment: false,
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            tabs: [
              Tab(text: '     Ongoing     '),
              Tab(text: '     History     '),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OngoingView(),
            HistoryScreen(),
          ],
        ),
      ),
    );
  }
}

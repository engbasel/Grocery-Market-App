import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          GestureDetector(onTap: () {}, child: const CustomHistoryItem()),
          GestureDetector(onTap: () {}, child: const CustomHistoryItem()),
          GestureDetector(onTap: () {}, child: const CustomHistoryItem()),
        ],
      )
          // const CustomHistoryItem(),
          // const CustomHistoryItem(),
          ),
    );
  }
}

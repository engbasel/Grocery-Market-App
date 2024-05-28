import 'package:flutter/material.dart';

import '../../../Core/widgets/customBackground.dart';
import '../Widgets/CosutomHistoryITem.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BackgroundWidget(
        children: const [
          SizedBox(height: 15),
          CustomHistoryItem(),
          CustomHistoryItem(),
          CustomHistoryItem(),
        ],
      ),
    );
  }
}

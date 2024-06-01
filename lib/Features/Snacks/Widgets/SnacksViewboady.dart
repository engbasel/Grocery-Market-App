import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/utils/Lists.dart';
import 'package:grocerymarket/Core/widgets/CoustomGridViwe.dart';

import '../../Home/Widgets/CustomAppBar.dart';

class SnacksViewboady extends StatelessWidget {
  const SnacksViewboady({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        horizontalPadding: 0,
        verticalPadding: 0,
        leadingFunction: () {
          Navigator.pop(context);
        },
        title: 'Snacks',
        leadingIcon: Icons.arrow_back,
        onTap: () {},
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomGridView(items: snackItems),
            ),
          ],
        ),
      ),
    );
  }
}

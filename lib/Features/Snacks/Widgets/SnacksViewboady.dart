import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/utils/Lists.dart';
import 'package:grocerymarket/Core/widgets/CoustomGridViwe.dart';

import '../../../Core/widgets/customBackground.dart';
import '../../Home/Widgets/CustomAppBar.dart';

class SnacksViewboady extends StatelessWidget {
  const SnacksViewboady({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GradientBackgroundScaffold(
        children: [
          CustomAppBar(
            horizontalPadding: 0, verticalPadding: 0,
            leadingFunction: () {},
            title: 'Snacks',
            leadingIcon: Icons.arrow_back,
            // place: MainAxisAlignment.start,
            // title: 'Snacks',
            onTap: () {},
          ),
          CustomGridView(items: snackItems),
        ],
      ),
    );
  }
}

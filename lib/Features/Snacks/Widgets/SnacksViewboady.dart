import 'package:flutter/material.dart';

import '../../../Core/widgets/customBackground.dart';
import '../../Home/Widgets/CustomAppBar.dart';

class SnacksViewboady extends StatelessWidget {
  const SnacksViewboady({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
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
      ],
    );
  }
}

class CoustomCardSnacks extends StatelessWidget {
  const CoustomCardSnacks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

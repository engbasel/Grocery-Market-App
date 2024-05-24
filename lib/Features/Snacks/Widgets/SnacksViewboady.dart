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
          title: 'Snacks',
          onTap: () {},
        )
      ],
    );
  }
}

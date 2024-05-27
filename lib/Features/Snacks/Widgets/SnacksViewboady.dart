import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/utils/Lists.dart';
import 'package:grocerymarket/Core/widgets/CoustomGridViwe.dart';
import 'package:grocerymarket/Features/Snacks/Widgets/CoustomCardSnacks.dart';

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
        CustomGridView(items: SnakItesm),
        // const CustomCardSnacks(
        //   imagePath: 'assets/ProductDetails/Milkimage.png',
        //   productDescription: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
        //   productName: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
        //   productPrice: '225',
        // ),
        // const SizedBox(height: 100),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';

import '../../../Core/utils/Lists.dart';
import '../../../Core/widgets/CoustomGridViwe.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20), // Add some spacing from the top
          CustomAppBar(
            title: 'Category',
            // icon: Icons.category,
            onTap: () {
              print('IconButton tapped');
            },
          ),
          CustomGridView(
            items: categoryItems,
          ),
        ],
      ),
    );
  }
}

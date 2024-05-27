import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/widgets/customBackground.dart';
import 'package:grocerymarket/Features/Home/Widgets/CurrentLocation.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/Home/Widgets/SearchBar.dart';
import '../../../Core/utils/Lists.dart';
import '../../../Core/widgets/CoustomGridViwe.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      children: [
        const SizedBox(height: 20), // Add some spacing from the top
        CustomAppBar(
          title: 'Grocery Plus',
          icon: Icons.home,
          onTap: () {
            print('IconButton tapped');
          },
        ),
        const SizedBox(height: 10), // Add some spacing from the top
        const CurrentLocation(),
        const CustomSearchBar(), // Ensure you instantiate CustomSearchBar
        // Expanded(child: ListViewHome()),
        CustomGridView(items: Homeitems),

        // Add some spacing from the top
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/Home/Widgets/CurrentLocation.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/Home/Widgets/SearchBar.dart';
import '../../../Core/utils/Lists.dart';
import '../../../Core/widgets/CoustomGridViwe.dart';
import '../../Notification/views/NotificationView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // const SizedBox(height: 20), // Add some spacing from the top
          CustomAppBar(
            horizontalPadding: 20,
            title: 'Grocery Plus',
            icon: FontAwesomeIcons.bell,
            onTap: () {
              Navigator.push(
                context,
                DialogRoute(
                  context: context,
                  builder: (context) {
                    return const NotificationView();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 10), // Add some spacing from the top
          const CurrentLocation(),
          const CustomSearchBar(), // Ensure you instantiate CustomSearchBar
          // Expanded(child: ListViewHome()),
          CustomGridView(items: homeItems),

          // Add some spacing from the top
        ],
      ),
    );
  }
}
// base;
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:grocerymarket/Features/Home/Widgets/CurrentLocation.dart';
// import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
// import 'package:grocerymarket/Features/Home/Widgets/SearchBar.dart';
// import '../../../Core/utils/Lists.dart';
// import '../../../Core/widgets/CoustomGridViwe.dart';
// import '../../Notification/views/NotificationView.dart';

// class HomeViewBody extends StatelessWidget {
//   const HomeViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           // const SizedBox(height: 20), // Add some spacing from the top
//           CustomAppBar(
//             horizontalPadding: 20,
//             title: 'Grocery Plus',
//             icon: FontAwesomeIcons.bell,
//             onTap: () {
//               Navigator.push(
//                 context,
//                 DialogRoute(
//                   context: context,
//                   builder: (context) {
//                     return const NotificationView();
//                   },
//                 ),
//               );
//             },
//           ),
//           const SizedBox(height: 10), // Add some spacing from the top
//           const CurrentLocation(),
//           const CustomSearchBar(), // Ensure you instantiate CustomSearchBar
//           // Expanded(child: ListViewHome()),
//           CustomGridView(items: homeItems),

//           // Add some spacing from the top
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/Home/Widgets/CoustomListItem.dart';
import 'package:grocerymarket/Features/Home/Widgets/CurrentLocation.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import '../../../Core/widgets/CoustomGridViwe.dart';
import '../../Notification/views/NotificationView.dart';
import '../../Search/Views/SearchView.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  _HomeViewBodyState createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final TextEditingController _searchController = TextEditingController();
  List<CustomListItem> filteredItems = homeItems;

  void _filterItems(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredItems = homeItems;
      });
    } else {
      setState(() {
        filteredItems = homeItems
            .where((item) =>
                item.textData.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterItems(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          const SizedBox(height: 10),
          const CurrentLocation(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                suffixIcon: IconButton(
                  onPressed: () {
                    // Implement the search action or navigation to the Search page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchView(),
                      ),
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.search),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          filteredItems.isNotEmpty
              ? CustomGridView(items: filteredItems)
              : const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Item not found',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

final List<CustomListItem> homeItems = [
  CustomListItem(
    View: '',
    imagePath: 'assets/Home/Fruits&Vegetables.png',
    textData: 'Fruits & Vegetables',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Breakfast.png',
    textData: 'Breakfast',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Beverages.png',
    textData: 'Beverages',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Meat&Fish.png',
    textData: 'Meat & Fish',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Snacks.png',
    textData: 'Snacks',
    View: '',
  ),
  CustomListItem(
    imagePath: 'assets/Home/Milk.png',
    textData: 'Dairy',
    View: '',
  ),
];

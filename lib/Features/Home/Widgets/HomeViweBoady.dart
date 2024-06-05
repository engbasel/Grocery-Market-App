import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/Home/Widgets/CoustomListItem.dart';
import 'package:grocerymarket/Features/Home/Widgets/CurrentLocation.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import '../../../Core/utils/Lists.dart';
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
              : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('assets/Search/NoData.png'),
                        const Text(
                          "Oops! We can’t find your product! But you can add it to wishlist",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
        ],
      ),
    );
  }
}

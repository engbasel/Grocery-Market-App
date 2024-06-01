import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Features/Category/views/CatigoryViwe.dart';
import '../../Features/Home/views/HomeViwe.dart';
import '../../Features/MoreInformation/Views/MoreInfoView.dart';
import '../../Features/MyBag/views/MyBagView.dart';

class CustomButtonNavigationBar extends StatefulWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  _CustomButtonNavigationBarState createState() =>
      _CustomButtonNavigationBarState();
}

class _CustomButtonNavigationBarState extends State<CustomButtonNavigationBar> {
  int _bottomNavIndex = 0; // Default index

  // List of screens for navigation
  final List<Widget> _screens = [
    const HomeView(),
    const CategoryView(),
    // const ProductDetailsView(),
    const MyBagView(),

    const MoreInfoView()
  ];

  // List of icons for navigation bar
  final List<IconData> _iconList = [
    Icons.home, // Example icons
    Icons.dashboard,
    FontAwesomeIcons.bagShopping,
    Icons.menu,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_bottomNavIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        items: List.generate(_iconList.length, (index) {
          return BottomNavigationBarItem(
            icon: _buildNavIcon(index),
            label: '',
          );
        }),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget _buildNavIcon(int index) {
    bool isSelected = index == _bottomNavIndex;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xff5ec401) : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        _iconList[index],
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}

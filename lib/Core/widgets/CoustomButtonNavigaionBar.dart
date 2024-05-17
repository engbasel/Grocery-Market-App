import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Category/views/CatigoryViwe.dart';
import 'package:grocerymarket/Features/Home/views/HomeViwe.dart';

class CustomButtonNavigationBar extends StatefulWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  _CustomButtonNavigationBarState createState() =>
      _CustomButtonNavigationBarState();
}

class _CustomButtonNavigationBarState extends State<CustomButtonNavigationBar> {
  int _bottomNavIndex = 0; // Default index
  List<IconData> iconList = [
    Icons.home, // Example icons
    Icons.business,
    Icons.school,
    Icons.settings,
  ];

  // List of screens for navigation
  final List<Widget> _screens = [
    const HomeView(),
    const CategoryView(),
    const Screen3(),
    const Screen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_bottomNavIndex], // Display the selected screen
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.red,
        height: 80,
        gapLocation: GapLocation.none,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        leftCornerRadius: 32,
        rightCornerRadius: 20,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        // Add other parameters as needed
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

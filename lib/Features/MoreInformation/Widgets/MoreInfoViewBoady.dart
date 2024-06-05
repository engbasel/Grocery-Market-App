import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/Addresses/views/AddressesView.dart';
import 'package:grocerymarket/Features/Auth/Login/views/LoginView.dart';
import 'package:grocerymarket/Features/MoreInformation/Widgets/CustomLabelItem.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/OrdersAndHistoryView.dart';
import 'package:grocerymarket/Features/Profile/views/EditProfileview.dart';
import 'package:grocerymarket/Features/Wishlist/Views/WishlistViews.dart';
import '../../Home/Widgets/CustomAppBar.dart';

class MoreInfoViewBodyDesktop extends StatefulWidget {
  const MoreInfoViewBodyDesktop({super.key});

  @override
  _MoreInfoViewBodyDesktopState createState() =>
      _MoreInfoViewBodyDesktopState();
}

class _MoreInfoViewBodyDesktopState extends State<MoreInfoViewBodyDesktop> {
  int? _selectedIndex;

  void _onItemTapped(int index, Future<void> Function() navigationCallback) {
    setState(() {
      _selectedIndex = index;
    });

    navigationCallback().then((_) {
      setState(() {
        _selectedIndex = null;
      });
    });
  }

  Future<void> _navigateTo(BuildContext context, Widget destination) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => destination,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'More',
        onTap: () {},
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/MoreInformation/Oval.png'),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shafikul Islam',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text('01XXXXXXXXXXXX'),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(
                      0, () => _navigateTo(context, const EditProfileview()));
                },
                icon: FontAwesomeIcons.pen,
                label: 'Edit Profile',
                color: Colors.blue,
                isSelected: _selectedIndex == 0,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(
                      1, () => _navigateTo(context, const AddressesView()));
                },
                icon: Icons.location_on_outlined,
                label: 'My address',
                color: Colors.blue,
                isSelected: _selectedIndex == 1,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(2,
                      () => _navigateTo(context, const OrdersAndHistoryView()));
                },
                icon: Icons.shopping_basket_outlined,
                label: 'My Orders',
                color: Colors.blue,
                isSelected: _selectedIndex == 2,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(
                      3, () => _navigateTo(context, const WishlistViews()));
                },
                icon: Icons.energy_savings_leaf,
                label: 'My Wishlist',
                color: Colors.blue,
                isSelected: _selectedIndex == 3,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(4, () async {
                    // Implement your Chat with us navigation
                    await Future.delayed(
                        const Duration(seconds: 2)); // Example delay
                  });
                },
                icon: Icons.chat_bubble_outline,
                label: 'Chat with us',
                color: Colors.blue,
                isSelected: _selectedIndex == 4,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(5, () async {
                    // Implement your Talk to our Support navigation
                    await Future.delayed(
                        const Duration(seconds: 2)); // Example delay
                  });
                },
                icon: Icons.call,
                label: 'Talk to our Support',
                color: Colors.blue,
                isSelected: _selectedIndex == 5,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(6, () async {
                    // Implement your Mail to us navigation
                    await Future.delayed(
                        const Duration(seconds: 2)); // Example delay
                  });
                },
                icon: Icons.mail,
                label: 'Mail to us',
                color: Colors.blue,
                isSelected: _selectedIndex == 6,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(7, () async {
                    // Implement your Message to facebook page navigation
                    await Future.delayed(
                        const Duration(seconds: 2)); // Example delay
                  });
                },
                icon: Icons.facebook,
                label: 'Message to facebook page',
                color: Colors.blue,
                isSelected: _selectedIndex == 7,
              ),
              const Divider(color: Color(0xfff0f0f0)),
              CustomLabelItem(
                onTap: () {
                  _onItemTapped(
                      8,
                      () =>
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const LoginView();
                            },
                          )));
                },
                icon: Icons.power_settings_new,
                label: 'Log out',
                color: Colors.blue,
                isSelected: _selectedIndex == 8,
              ),
              const Divider(color: Color(0xfff0f0f0)),
            ],
          ),
        ),
      ),
    );
  }
}

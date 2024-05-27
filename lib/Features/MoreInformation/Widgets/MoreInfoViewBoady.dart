// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:grocerymarket/Core/widgets/customBackground.dart';
// import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
// import 'package:grocerymarket/Features/MoreInformation/Widgets/CustomLabelItem.dart';

// class MoreInfoViewBody extends StatelessWidget {
//   const MoreInfoViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BackgroundWidget(
//       children: [
//         CustomAppBar(
//           title: 'More',
//           onTap: () {},
//         ),
//         const Row(
//           children: [
//             SizedBox(width: 10),
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/MoreInformation/Oval.png'),
//             ),
//             SizedBox(width: 16),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Shafikul Islam',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),
//                 ),
//                 Text('01XXXXXXXXXXXX')
//               ],
//             )
//           ],
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: FontAwesomeIcons.pen,
//           label: 'Edit Profile',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.location_on_outlined,
//           label: 'My address',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.shopping_basket_outlined,
//           label: 'My Orders',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.energy_savings_leaf,
//           label: 'My Wishlist',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.chat_bubble_outline,
//           label: 'Chat with us',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.call,
//           label: 'Talk to our Support',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.mail,
//           label: 'Mail to us',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.facebook,
//           label: 'Message to facebook page',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//         CustomLabelItem(
//           onTap: () {},
//           icon: Icons.power_settings_new,
//           label: 'Log out',
//           color: Colors.blue,
//         ),
//         const Divider(color: Color(0xfff0f0f0)),
//       ],
//     );
//   }
// }

// // List ListCustomLabelItem = [];

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/MoreInformation/Widgets/CustomLabelItem.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/OrdersAndHistoryView.dart';
import 'package:grocerymarket/Features/Profile/views/EditProfileview.dart';
import 'package:grocerymarket/Features/Wishlist/Views/WishlistViews.dart';
import '../../../Core/widgets/customBackground.dart';
import '../../Home/Widgets/CustomAppBar.dart';

class MoreInfoViewBody extends StatefulWidget {
  const MoreInfoViewBody({super.key});

  @override
  _MoreInfoViewBodyState createState() => _MoreInfoViewBodyState();
}

class _MoreInfoViewBodyState extends State<MoreInfoViewBody> {
  int? _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        children: [
          CustomAppBar(
            title: 'More',
            onTap: () {},
          ),
          const Row(
            children: [
              SizedBox(width: 10),
              CircleAvatar(
                backgroundImage: AssetImage('assets/MoreInformation/Oval.png'),
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
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const EditProfileview();
                },
              ));
              _onItemTapped(0);
            },
            icon: FontAwesomeIcons.pen,
            label: 'Edit Profile',
            color: Colors.blue,
            isSelected: _selectedIndex == 0,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(1);
            },
            icon: Icons.location_on_outlined,
            label: 'My address',
            color: Colors.blue,
            isSelected: _selectedIndex == 1,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(2);
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const OrdersAndHistoryView();
                },
              ));
            },
            icon: Icons.shopping_basket_outlined,
            label: 'My Orders',
            color: Colors.blue,
            isSelected: _selectedIndex == 2,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(3);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const WishlistViews();
                  },
                ),
              );
            },
            icon: Icons.energy_savings_leaf,
            label: 'My Wishlist',
            color: Colors.blue,
            isSelected: _selectedIndex == 3,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(4);
            },
            icon: Icons.chat_bubble_outline,
            label: 'Chat with us',
            color: Colors.blue,
            isSelected: _selectedIndex == 4,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(5);
            },
            icon: Icons.call,
            label: 'Talk to our Support',
            color: Colors.blue,
            isSelected: _selectedIndex == 5,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(6);
            },
            icon: Icons.mail,
            label: 'Mail to us',
            color: Colors.blue,
            isSelected: _selectedIndex == 6,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(7);
            },
            icon: Icons.facebook,
            label: 'Message to facebook page',
            color: Colors.blue,
            isSelected: _selectedIndex == 7,
          ),
          const Divider(color: Color(0xfff0f0f0)),
          CustomLabelItem(
            onTap: () {
              _onItemTapped(8);
            },
            icon: Icons.power_settings_new,
            label: 'Log out',
            color: Colors.blue,
            isSelected: _selectedIndex == 8,
          ),
          const Divider(color: Color(0xfff0f0f0)),
        ],
      ),
    );
  }
}

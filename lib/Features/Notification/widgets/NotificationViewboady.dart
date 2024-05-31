import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
import 'package:grocerymarket/Features/Notification/widgets/CustomNotificationItem.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0072B8), Color(0xFF00B4DB)],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                leadingIcon: Icons.arrow_back,
                leadingFunction: () {
                  Navigator.pop(context);
                },
                title: 'notifications',
                onTap: () {},
              ),
              const CustomNotificationItem(
                sizeIcon: 15,
                orderNumber: 'Order #345',
                orderStatus:
                    'Your Order is Confirmed. Please check everything is okay',
                time: '3:57 PM',
                backgroundColor: Color(0xffe2f3d2),
                avatarColor: Colors.amber,
                avatarIcon: FontAwesomeIcons.list,
              ),
              const Divider(
                color: Color(0xffe1e1e1),
                endIndent: 20,
                indent: 20,
              ),
              const CustomNotificationItem(
                sizeIcon: 15,
                orderNumber: 'Order #345',
                orderStatus:
                    'Your Order is Confirmed. Please check everything is okay',
                time: '3:57 PM',
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                avatarColor: Colors.green,
                avatarIcon: FontAwesomeIcons.phone,
              ),
              const Divider(
                color: Color(0xffe1e1e1),
                endIndent: 20,
                indent: 20,
              ),
              const CustomNotificationItem(
                sizeIcon: 15,
                orderNumber: 'Order #345',
                orderStatus:
                    'Your Order is Confirmed. Please check everything is okay',
                time: '3:57 PM',
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                avatarColor: Colors.red,
                avatarIcon: FontAwesomeIcons.listCheck,
              ),
              const Divider(
                color: Color(0xffe1e1e1),
                endIndent: 20,
                indent: 20,
              ),
              const CustomNotificationItem(
                sizeIcon: 15,
                orderNumber: 'Order #345',
                orderStatus:
                    'Your Order is Confirmed. Please check everything is okay',
                time: '3:57 PM',
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                avatarColor: Colors.green,
                avatarIcon: FontAwesomeIcons.solidStarHalfStroke,
              ),
              const Divider(
                color: Color(0xffe1e1e1),
                endIndent: 20,
                indent: 20,
              ),
              const CustomNotificationItem(
                sizeIcon: 15,
                orderNumber: 'Order #345',
                orderStatus:
                    'Your Order is Confirmed. Please check everything is okay',
                time: '3:57 PM',
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                avatarColor: Colors.red,
                avatarIcon: FontAwesomeIcons.list,
              ),
              const Divider(
                color: Color(0xffe1e1e1),
                endIndent: 20,
                indent: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

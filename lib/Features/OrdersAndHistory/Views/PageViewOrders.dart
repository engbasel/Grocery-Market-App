import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/EstimatedDeliveryView.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/ScheduledView.dart';
import 'package:grocerymarket/Features/OrdersAndHistory/Views/DeliveryStatusView.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../Home/Widgets/CustomAppBar.dart';

class PageViewOrders extends StatelessWidget {
  const PageViewOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(
              leadingIcon: Icons.arrow_back,
              leadingFunction: () {
                Navigator.pop(context);
              },
              title: 'Order #345',
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Scheduled',
                    style: TextStyle(
                      color: Color(0xff37474F),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '6:30 pm',
                    style: TextStyle(
                      color: Color(0xffF37A20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.date_range),
                  ),
                  const Text(
                    'March 5, 2019',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SmoothPageIndicator(
                controller: pageController, // PageController
                count: 3,
                effect: const WormEffect(
                  dotHeight: 2.0,
                  dotWidth: 80.0,
                  spacing: 16.0,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: const [
                  ScheduledView(),
                  EstimatedDeliveryView(),
                  DeliveryStatusView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

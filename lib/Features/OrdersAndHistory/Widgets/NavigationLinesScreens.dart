// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../Views/EstimatedDeliveryOneView.dart';
// import '../Views/EstimatedDeliveryTwoView.dart';
// import '../Views/ScheduledView.dart';

// class NavigationLinesScreens extends StatefulWidget {
//   const NavigationLinesScreens({super.key});

//   @override
//   _NavigationLinesScreensState createState() => _NavigationLinesScreensState();
// }

// class _NavigationLinesScreensState extends State<NavigationLinesScreens> {
//   final PageController _controller = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 16.0),
//         SmoothPageIndicator(
//           controller: _controller,
//           count: 3,
//           effect: const WormEffect(
//             dotHeight: 2.0,
//             dotWidth: 60.0,
//             activeDotColor: Colors.green,
//             dotColor: Colors.grey,
//           ),
//         ),
//         const SizedBox(height: 16.0),
//         PageView(
//           controller: _controller,
//           children: const [
//             EstimatedDeliveryOneView(),
//             EstimatedDeliveryTwoView(),
//             ScheduledView(),
//           ],
//         ),
//         const SizedBox(height: 16.0),
//       ],
//     );
//   }
// }

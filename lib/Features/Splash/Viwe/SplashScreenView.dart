// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class SplashScreenView extends StatelessWidget {
//   const SplashScreenView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.transparent,
//       body: SafeArea(
//         child: Center(
//           // Wrap the Column with a Center widget
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SvgPicture.asset(
//                 'assets/Splash/AppIcon.svg',
//                 height: 200,
//                 width: 200,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocerymarket/Features/Home/Viwe/HomeViwe.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomeView after a delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/Splash/AppIcon.svg',
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

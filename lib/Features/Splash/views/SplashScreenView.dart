import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocerymarket/Core/widgets/CoustomButtonNavigaionBar.dart';
import 'package:grocerymarket/constins.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    // Navigate to HmeView after a delay
    Future.delayed(Duration(seconds: KdurationTime), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => const CustomButtonNavigationBar()),
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
              const SizedBox(height: 21),
              const Text(
                'Grocery Plus',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff37474F),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

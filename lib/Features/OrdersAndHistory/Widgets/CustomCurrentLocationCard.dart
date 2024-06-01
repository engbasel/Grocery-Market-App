import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/Payment/Views/Payment%20MethodView.dart';

class CustomCurrentLocationCard extends StatelessWidget {
  String textOne, textTwo;

  CustomCurrentLocationCard({
    super.key,
    required this.textOne,
    required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(
          0xffe2f3ec,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xff5ec401),
                child: Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textOne,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(textTwo),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PaymentMethodView();
                      },
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

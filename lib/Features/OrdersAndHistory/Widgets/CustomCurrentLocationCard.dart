import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCurrentLocationCard extends StatelessWidget {
  const CustomCurrentLocationCard({super.key});

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
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Cash on Delivery'),
                  Text('You selected'),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
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

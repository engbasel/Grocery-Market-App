import 'package:flutter/material.dart';

class DeliveryLocationItem extends StatelessWidget {
  const DeliveryLocationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffe4edfa),
          child: Icon(Icons.location_on_outlined, color: Colors.white),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Location',
              style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
            ),
            Text(
              '32 Llanberis Close, Tonteg, CF38 1HR',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    0xFF37474F,
                  ),
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}

class DeliveryMan extends StatelessWidget {
  const DeliveryMan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 0, 90, 217),
          child: Icon(Icons.location_on_outlined, color: Colors.white),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Monir Hasan',
              style: TextStyle(fontSize: 14, color: Color(0xFF808080)),
            ),
            Text(
              '(207) 555-0119',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    0xFF37474F,
                  ),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: Color(0xfffdece0),
          child: Icon(
            Icons.phone,
            color: Color(0xfff37a20),
          ),
        )
      ],
    );
  }
}

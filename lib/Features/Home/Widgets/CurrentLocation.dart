import 'package:flutter/material.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFF87DD39),
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
        ),
      ),
    );
  }
}

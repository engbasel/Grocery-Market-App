import 'package:flutter/material.dart';

class CustomHistoryItem extends StatelessWidget {
  const CustomHistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Color(0xffF37A20),
            radius: 22,
            child: Icon(
              Icons.shopify_sharp,
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order #345',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Delivered',
                style: TextStyle(
                  color: Color(0xff5EC401),
                  fontSize: 12,
                ),
              ),
              Text(
                'October 26, 2014',
                style: TextStyle(
                  color: Color(0xff37474F),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 12,
          ),
          Column(
            children: [
              Text(
                '৳700',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffF37A20),
                ),
              ),
            ],
          ),
          SizedBox(width: 50),
        ],
      ),
    );
  }
}

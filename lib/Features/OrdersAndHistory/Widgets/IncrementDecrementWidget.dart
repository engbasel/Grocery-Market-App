import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncrementDecrementWidget extends StatefulWidget {
  const IncrementDecrementWidget({super.key});

  @override
  _IncrementDecrementWidgetState createState() =>
      _IncrementDecrementWidgetState();
}

class _IncrementDecrementWidgetState extends State<IncrementDecrementWidget> {
  int _counter = 2;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: _incrementCounter,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: const Icon(Icons.add),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
        ),
        Text(
          '$_counter',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
        ),
        GestureDetector(
          onTap: _decrementCounter,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: const Icon(FontAwesomeIcons.minus),
          ),
        ),
      ],
    );
  }
}

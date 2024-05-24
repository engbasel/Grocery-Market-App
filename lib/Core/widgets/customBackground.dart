import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  List<Widget> children = const <Widget>[];

  BackgroundWidget({super.key, required this.children});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.red.withOpacity(0.3),
                            Colors.blue.withOpacity(0.3),
                            Colors.green.withOpacity(0.3),
                            Colors.yellow.withOpacity(0.3),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: const Color(0xffffffff),
                ),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.red.withOpacity(0.16),
                            Colors.blue.withOpacity(0.16),
                            Colors.green.withOpacity(0.16),
                            Colors.yellow.withOpacity(0.16),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: children,
            ),
          )
        ],
      ),
    );
  }
}

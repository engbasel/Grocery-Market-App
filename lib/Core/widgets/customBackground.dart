import 'dart:ui';
import 'package:flutter/material.dart';

class GradientBackgroundScaffold extends StatelessWidget {
  final List<Widget> children;
  final AppBar? appBar;
  final FloatingActionButton? floatingActionButton;

  const GradientBackgroundScaffold({
    super.key,
    required this.children,
    this.appBar,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: const Color(0xffffffff),
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        child: Stack(
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
            ),
          ],
        ),
      ),
    );
  }
}

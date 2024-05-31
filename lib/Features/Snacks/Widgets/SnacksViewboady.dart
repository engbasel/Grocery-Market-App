import 'package:flutter/material.dart';
import 'package:grocerymarket/Core/utils/Lists.dart';
import 'package:grocerymarket/Core/widgets/CoustomGridViwe.dart';

import '../../Home/Widgets/CustomAppBar.dart';

class SnacksViewboady extends StatelessWidget {
  const SnacksViewboady({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0072B8), Color(0xFF00B4DB)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                horizontalPadding: 0,
                verticalPadding: 0,
                leadingFunction: () {},
                title: 'Snacks',
                leadingIcon: Icons.arrow_back,
                onTap: () {},
              ),
              Expanded(
                child: CustomGridView(items: snackItems),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:grocerymarket/Features/MoreInformation/Widgets/MoreInfoViewBoady.dart';

// class MoreInfoView extends StatelessWidget {
//   const MoreInfoView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MoreInfoViewBodyDesktop();
//   }
// }

import 'package:flutter/material.dart';
import 'package:grocerymarket/Features/MoreInformation/Views/MoreInfoViewBodyMobile.dart';
import 'package:grocerymarket/Features/MoreInformation/Views/MoreInfoViewBodyTablet.dart';

import '../Widgets/MoreInfoViewBoady.dart';

class MoreInfoView extends StatelessWidget {
  const MoreInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);

        if (constraints.maxWidth >= 800) {
          // Desktop layout
          return const MoreInfoViewBodyDesktop();
        } else if (constraints.maxWidth >= 452) {
          // Tablet layout
          return const MoreInfoViewBodyTablet();
        } else {
          // Mobile layout
          return const MoreInfoViewBodyMobile();
        }
      },
    );
  }
}

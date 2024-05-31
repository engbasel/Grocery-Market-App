// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:grocerymarket/Features/Home/Widgets/CustomAppBar.dart';
// import 'package:grocerymarket/Core/widgets/CustomButton.dart';
// import '../../../Core/widgets/customBackground.dart';

// class WishlistDetailsViewBody extends StatefulWidget {
//   const WishlistDetailsViewBody({super.key});

//   @override
//   State<WishlistDetailsViewBody> createState() =>
//       _WishlistDetailsViewBodyState();
// }

// class _WishlistDetailsViewBodyState extends State<WishlistDetailsViewBody> {
//   final TextEditingController _textController = TextEditingController();
//   bool _isEditing = false;
//   String _productTitle = 'Arla DANO Full Cream Milk Powder Instant';

//   void _toggleEditing() {
//     setState(() {
//       _isEditing = !_isEditing;
//       if (!_isEditing) {
//         _productTitle = _textController.text;
//       } else {
//         _textController.text = _productTitle;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: GradientBackgroundScaffold(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               CustomAppBar(
//                 leadingIcon: Icons.arrow_back,
//                 leadingFunction: () {
//                   Navigator.pop(context);
//                 },
//                 title: '',
//                 onTap: () {},
//               ),
//               Image.asset(
//                 'assets/ProductDetails/Milkimage.png',
//                 height: 250,
//                 width: 250,
//               ),
//               const SizedBox(height: 30),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: _isEditing
//                     ? TextField(
//                         controller: _textController,
//                         decoration: const InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: 'Product Title',
//                         ),
//                       )
//                     : Text(
//                         _productTitle,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                         ),
//                       ),
//               ),
//               const SizedBox(height: 30),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Text(
//                   '1 KG',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: CustomButton(
//                   onTap: _toggleEditing,
//                   widthAtFirstOfButton: 150,
//                   widthBetweenItems: 80,
//                   iconButtonAtEnd: FontAwesomeIcons.pen,
//                   height: 50,
//                   titleButton: _isEditing ? 'Save Info' : 'Edit Info',
//                   color: 0xff5EC401,
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: CustomButton(
//                   onTap: () {},
//                   widthAtFirstOfButton: 150,
//                   widthBetweenItems: 80,
//                   iconButtonAtEnd: FontAwesomeIcons.recycle,
//                   height: 50,
//                   titleButton: 'Delete',
//                   color: 0xffFF5552,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';

class WishlistDetailsViewBody extends StatefulWidget {
  const WishlistDetailsViewBody({super.key});

  @override
  State<WishlistDetailsViewBody> createState() =>
      _WishlistDetailsViewBodyState();
}

class _WishlistDetailsViewBodyState extends State<WishlistDetailsViewBody> {
  final TextEditingController _textController = TextEditingController();
  bool _isEditing = false;
  String _productTitle = 'Arla DANO Full Cream Milk Powder Instant';

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
      if (!_isEditing) {
        _productTitle = _textController.text;
      } else {
        _textController.text = _productTitle;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/ProductDetails/Milkimage.png',
              height: 250,
              width: 250,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: _isEditing
                  ? TextField(
                      controller: _textController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Product Title',
                      ),
                    )
                  : Text(
                      _productTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '1 KG',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                onTap: _toggleEditing,
                widthAtFirstOfButton: 150,
                widthBetweenItems: 80,
                iconButtonAtEnd: FontAwesomeIcons.pen,
                height: 50,
                titleButton: _isEditing ? 'Save Info' : 'Edit Info',
                color: 0xff5EC401,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                onTap: () {},
                widthAtFirstOfButton: 150,
                widthBetweenItems: 80,
                iconButtonAtEnd: FontAwesomeIcons.recycle,
                height: 50,
                titleButton: 'Delete',
                color: 0xffFF5552,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// // import 'package:flutter/material.dart';

// // class PasswordField extends StatefulWidget {
// //   const PasswordField({super.key});

// //   @override
// //   _PasswordFieldState createState() => _PasswordFieldState();
// // }

// // class _PasswordFieldState extends State<PasswordField> {
// //   bool _obscureText = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return TextFormField(
// //       obscureText: _obscureText,
// //       decoration: InputDecoration(
// //         labelText: 'Password',
// //         prefixIcon: const Icon(Icons.lock),
// //         suffixIcon: IconButton(
// //           icon: Icon(
// //             _obscureText ? Icons.visibility : Icons.visibility_off,
// //           ),
// //           onPressed: () {
// //             setState(() {
// //               _obscureText = !_obscureText;
// //             });
// //           },
// //         ),
// //         filled: true,
// //         fillColor: Colors.grey[200],
// //         border: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(8.0),
// //           borderSide: BorderSide.none,
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class PasswordField extends StatefulWidget {
//   final TextEditingController? controller;

//   const PasswordField({super.key, this.controller});

//   @override
//   _PasswordFieldState createState() => _PasswordFieldState();
// }

// class _PasswordFieldState extends State<PasswordField> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//       obscureText: _obscureText,
//       decoration: InputDecoration(
//         labelText: 'Password',
//         prefixIcon: const Icon(Icons.lock),
//         suffixIcon: IconButton(
//           icon: Icon(
//             _obscureText ? Icons.visibility : Icons.visibility_off,
//           ),
//           onPressed: () {
//             setState(() {
//               _obscureText = !_obscureText;
//             });
//           },
//         ),
//         filled: true,
//         fillColor: Colors.grey[200],
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.0),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class PasswordField extends StatefulWidget {
//   final TextEditingController? controller;

//   const PasswordField({super.key, this.controller});

//   @override
//   _PasswordFieldState createState() => _PasswordFieldState();
// }

// class _PasswordFieldState extends State<PasswordField> {
//   bool _obscureText = true;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//       obscureText: _obscureText,
//       decoration: InputDecoration(
//         labelText: 'Password',
//         prefixIcon: const Icon(Icons.lock),
//         suffixIcon: IconButton(
//           icon: Icon(
//             _obscureText ? Icons.visibility : Icons.visibility_off,
//           ),
//           onPressed: () {
//             setState(() {
//               _obscureText = !_obscureText;
//             });
//           },
//         ),
//         filled: true,
//         fillColor: Colors.grey[200],
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.0),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const PasswordField({super.key, this.controller, this.onChanged});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: 'Password',
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

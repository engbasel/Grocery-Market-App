import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocerymarket/Core/widgets/CoustomButtonNavigaionBar.dart';
import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/PasswordField.dart';
import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/Auth/Signup/views/signupView.dart';

class loginviewbody extends StatelessWidget {
  const loginviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            const Text(
              'WELCOME BACK!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            SvgPicture.asset('assets/Auth/login.svg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have a account, ',
                ),
                GestureDetector(
                  child: const Text('Sign up'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignupView();
                        },
                      ),
                    );
                  },
                )
              ],
            ),
            // const Text('Username'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: customTextFormField(
                labelText: 'labelText',
                hintText: 'hintText',
                // prefixIcon: prefixIcon,
              ),
            ),
            // const Text('Password'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: PasswordField(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const CustomButtonNavigationBar();
                      },
                    ),
                  );
                },
                height: 50,
                color: 0xff5ec401,
                titleButton: 'Login',
                widthAtFirstOfButton: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}

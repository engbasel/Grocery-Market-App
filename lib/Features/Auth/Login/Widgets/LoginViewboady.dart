import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocerymarket/Core/widgets/CoustomButtonNavigaionBar.dart';
import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/PasswordField.dart';
import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
import 'package:grocerymarket/Core/widgets/CustomButton.dart';
import 'package:grocerymarket/Features/Auth/Signup/views/signupView.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
                  'Don’t have an account, ',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      color: Color(0xffF37A20),
                    ),
                  ),
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
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: customTextFormField(
                prefixIcon: Icons.person,
                labelText: 'User name',
                hintText: 'username',
              ),
            ),
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
            ),
          ],
        ),
      ),
    );
  }
}

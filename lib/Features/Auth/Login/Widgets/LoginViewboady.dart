// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:grocerymarket/Core/widgets/CoustomButtonNavigaionBar.dart';
// import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/PasswordField.dart';
// import 'package:grocerymarket/Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
// import 'package:grocerymarket/Core/widgets/CustomButton.dart';
// import 'package:grocerymarket/Features/Auth/Signup/views/signupView.dart';

// import '../../../../Core/utils/constins.dart';

// class LoginViewBody extends StatefulWidget {
//   const LoginViewBody({super.key});

//   @override
//   _LoginViewBodyState createState() => _LoginViewBodyState();
// }

// class _LoginViewBodyState extends State<LoginViewBody> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   late String savedEmail;
//   late String savedPassword;

//   @override
//   void initState() {
//     super.initState();
//     _loadUserCredentials();
//   }

//   Future<void> _loadUserCredentials() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       savedEmail = prefs.getString('email') ?? UserNameSharedPreferences;
//       savedPassword = prefs.getString('password') ?? PasswordSharedPreferences;
//     } catch (error, stackTrace) {
//       print('Error loading user credentials: $error');
//       print(stackTrace);
//     }
//   }

//   void _showErrorDialog(String message) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Login Error'),
//         content: Text(message),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _login() async {
//     if (_emailController.text == savedEmail &&
//         _passwordController.text == savedPassword) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const CustomButtonNavigationBar(),
//         ),
//       );
//     } else {
//       _showErrorDialog('Invalid email or password. Please try again.');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             final mediaQueryHeight = constraints.maxHeight;
//             final mediaQueryWidth = constraints.maxWidth;

//             return SingleChildScrollView(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(
//                   minHeight: mediaQueryHeight,
//                 ),
//                 child: IntrinsicHeight(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 25),
//                       SvgPicture.asset(
//                         'assets/Auth/login.svg',
//                         height: mediaQueryHeight * 0.3,
//                       ),
//                       const SizedBox(height: 20),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Don’t have an account, ',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                           GestureDetector(
//                             child: const Text(
//                               'Sign up',
//                               style: TextStyle(
//                                 color: Color(0xffF37A20),
//                               ),
//                             ),
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => const SignupView(),
//                                 ),
//                               );
//                             },
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 15, vertical: 5),
//                         child: customTextFormField(
//                           controller: _emailController,
//                           prefixIcon: Icons.person,
//                           labelText: 'User name',
//                           hintText: 'username',
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 15, vertical: 5),
//                         child: PasswordField(
//                           controller: _passwordController,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 15, vertical: 5),
//                         child: CustomButton(
//                           onTap: _login,
//                           height: 50,
//                           color: 0xff5ec401,
//                           titleButton: 'Login',
//                           widthAtFirstOfButton: mediaQueryWidth * .4,
//                         ),import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Core/widgets/CoustomButtonNavigaionBar.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/PasswordField.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
import '../../../../Core/widgets/CustomButton.dart';
import '../../Cubit/LoginStates.dart';
import '../../Signup/views/signupView.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final mediaQueryHeight = constraints.maxHeight;
              final mediaQueryWidth = constraints.maxWidth;

              return BlocListener<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state.errorMessage != null) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Login Error'),
                        content: Text(state.errorMessage!),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.read<LoginCubit>().clearError();
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else if (!state.isLoading &&
                      state.email == 'Basel Ahmed' &&
                      state.password == 'password') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomButtonNavigationBar(),
                      ),
                    );
                  }
                },
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: mediaQueryHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 25),
                          const SizedBox(height: 25),
                          SvgPicture.asset(
                            'assets/Auth/login.svg',
                            height: mediaQueryHeight * 0.3,
                          ),
                          const SizedBox(height: 20),
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
                                      builder: (context) => const SignupView(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: BlocBuilder<LoginCubit, LoginState>(
                              builder: (context, state) {
                                return customTextFormField(
                                  controller: TextEditingController(
                                      text: state.email)
                                    ..selection = TextSelection.fromPosition(
                                      TextPosition(offset: state.email.length),
                                    ),
                                  prefixIcon: Icons.person,
                                  labelText: 'User name',
                                  hintText: 'username',
                                  onChanged: (value) => context
                                      .read<LoginCubit>()
                                      .updateEmail(value),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: BlocBuilder<LoginCubit, LoginState>(
                              builder: (context, state) {
                                return PasswordField(
                                  controller: TextEditingController(
                                      text: state.password)
                                    ..selection = TextSelection.fromPosition(
                                      TextPosition(
                                          offset: state.password.length),
                                    ),
                                  onChanged: (value) => context
                                      .read<LoginCubit>()
                                      .updatePassword(value),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: CustomButton(
                              onTap: () => context.read<LoginCubit>().login(),
                              height: 50,
                              color: 0xff5ec401,
                              titleButton: 'Login',
                              widthAtFirstOfButton: mediaQueryWidth * .4,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

//                       ),
//                       const Spacer(),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }



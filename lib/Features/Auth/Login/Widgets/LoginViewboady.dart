import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Core/widgets/CoustomButtonNavigaionBar.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/PasswordField.dart';
import '../../../../Core/widgets/CoustomTextFormFildes/customTextFormField.dart';
import '../../../../Core/widgets/CustomButton.dart';
import '../Cubit/LoginCubit.dart';
import '../Cubit/LoginStates.dart';
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
                  } else if (state.isLoading &&
                      state.email == 'Basel Ahmed' &&
                      state.password == 'password') {
                    Navigator.pushReplacement(
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
                                      builder: (context) => SignupView(),
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
                              TextColor: Colors.white,
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

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupCubit extends Cubit<SignupState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignupCubit() : super(SignupState());

  Future<void> signupWithEmailAndPassword() async {
    emit(SignupState(status: SignupStatus.loading));
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // Handle success scenario
      emit(SignupState(status: SignupStatus.success));
    } catch (e) {
      // Handle failure scenario
      emit(SignupState(status: SignupStatus.failure, error: e.toString()));
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}

class SignupState {
  final SignupStatus status;
  final String? error;

  SignupState({
    this.status = SignupStatus.initial,
    this.error,
  });
}

enum SignupStatus { initial, loading, success, failure }

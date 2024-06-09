import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum SignupStatus { initial, loading, success, failure }

class SignupState {
  final SignupStatus status;
  final String? error;

  SignupState({
    this.status = SignupStatus.initial,
    this.error,
  });
}

class SignupCubit extends Cubit<SignupState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  SignupCubit() : super(SignupState());

  Future<void> signupWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SignupState(status: SignupStatus.loading));
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Handle success scenario
      emit(SignupState(status: SignupStatus.success));
    } catch (e) {
      // Handle failure scenario
      emit(SignupState(status: SignupStatus.failure, error: e.toString()));
    }
  }
}

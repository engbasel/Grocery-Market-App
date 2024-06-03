import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocerymarket/Features/Auth/Cubit/LoginStates.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit()
      : super(LoginState(
          email: 'Basel Ahmed',
          password: 'password',
        )) {
    loadUserCredentials();
  }

  Future<void> loadUserCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('email') ?? 'Basel Ahmed';
    final password = prefs.getString('password') ?? 'password';

    emit(state.copyWith(email: email, password: password));
  }

  Future<void> saveUserCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', state.email);
    await prefs.setString('password', state.password);
  }

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: password));
  }

  void login() async {
    emit(state.copyWith(isLoading: true));

    await saveUserCredentials();

    if (state.email == 'Basel Ahmed' && state.password == 'password') {
      emit(state.copyWith(isLoading: false));
      // Handle successful login

      print('done');
    } else {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Invalid email or password. Please try again.',
      ));
    }
  }

  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }
}

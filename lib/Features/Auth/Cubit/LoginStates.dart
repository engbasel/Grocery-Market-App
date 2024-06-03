import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginState {
  final String email;
  final String password;
  final bool isLoading;
  final String? errorMessage;

  LoginState({
    required this.email,
    required this.password,
    this.isLoading = false,
    this.errorMessage,
  });

  LoginState copyWith({
    String? email,
    String? password,
    bool? isLoading,
    String? errorMessage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

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

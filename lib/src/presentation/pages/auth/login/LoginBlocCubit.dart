import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/src/presentation/pages/auth/login/LoginBloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class LoginBlocCubit extends Cubit<Loginbloc> {
  LoginBlocCubit() : super(LoginInitial());

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get emailStrem => _emailController.stream;
  Stream<String> get passwordStrem => _passwordController.stream;

  void changeEmail(String email) {
  if (email.length >= 3) {
    _emailController.sink.add(email);
  }
}

void changePassword(String password) {
  if (password.isNotEmpty) {
    _passwordController.sink.add(password);
  }
}


Stream<bool> get validateForm =>
  Rx.combineLatest2(
    emailStrem,
    passwordStrem,
    (String email, String password) {
      return email.length >= 3 && password.isNotEmpty;
    },
  );



  void dispose() {
    changeEmail('');
    changePassword('');
  }

  void login() {
    print('Email: ${_emailController.value}');
        print('Password: ${_passwordController.value}');

  }
}

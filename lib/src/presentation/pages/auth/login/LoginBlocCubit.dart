import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/src/presentation/pages/auth/login/LoginBloc.dart';
import 'package:rxdart/subjects.dart';

class LoginBlocCubit extends Cubit<Loginbloc> {
  LoginBlocCubit() : super(LoginInitial());

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get emailStrem => _emailController.stream;
  Stream<String> get passwordStrem => _passwordController.stream;

  void changeEmail(String email) {
    _emailController.sink.add(email);
  }

  void changePassword(String password) {
    _emailController.sink.add(password);
  }

  void login() {
    print('Email: ${_emailController.value}');
  }
}

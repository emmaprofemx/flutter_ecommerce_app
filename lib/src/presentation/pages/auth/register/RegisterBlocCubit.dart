import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/src/presentation/pages/auth/register/RegisterBlocState.dart';
import 'package:rxdart/rxdart.dart';

class RegisterBlocCubit extends Cubit<RegisterblocState> {
  RegisterBlocCubit() : super(RegisterInitial());

  final _nameController = BehaviorSubject<String>();
  final _lastnameController = BehaviorSubject<String>();

  final _emailController = BehaviorSubject<String>();

  final _phoneController = BehaviorSubject<String>();

  final _passwordController = BehaviorSubject<String>();

  final _confirmPasswordController = BehaviorSubject<String>();

  Stream<String> get nameStream => _nameController.stream;
  Stream<String> get lastnameStream => _lastnameController.stream;

  Stream<String> get emailStream => _emailController.stream;

  Stream<String> get phoneStream => _phoneController.stream;

  Stream<String> get passwordStream => _passwordController.stream;

  Stream<String> get confirmPasswordStream => _confirmPasswordController.stream;


  Stream<bool> get validateForm => Rx.combineLatest6(nameStream, lastnameStream, emailStream, phoneStream, passwordStream, confirmPasswordStream, (a,b,c,d,e,f) => true);


  void changeName(String name) {
    if (name.length < 2) {
      _nameController.sink.addError('El nombre es muy corto');
    } else {
      _nameController.sink.add(name);
    }
  }

  void changeLastName(String lastname) {
    if (lastname.length < 2) {
      _lastnameController.sink.addError('El nombre es muy corto');
    } else {
      _lastnameController.sink.add(lastname);
    }
  }

  void changePhone(String phone) {
    if (phone.length < 8) {
      _phoneController.sink.addError('No es un numero de telefono valido');
    } else {
      _phoneController.sink.add(phone);
    }
  }

  void changePassword(String password) {
    if (password.length < 0) {
      _passwordController.sink.addError('Al menos 6 caracteres');
    } else {
      _passwordController.sink.add(password);
    }
  }

  void changeConfirmPassword(String confirmPassword) {
    if (confirmPassword.length < 6) {
      _passwordController.sink.addError('Al menos 6 caracteres');
    } else if(confirmPassword != _passwordController.value)  {
      _passwordController.sink.addError('Las contraseñas no coinciden');
    }else{
      _confirmPasswordController.sink.add(confirmPassword);
    }
  }

  void dispose(){
    changeName('');
    changeLastName('');
    changePhone('');
    changePassword('');
    changeConfirmPassword('');
  }


}

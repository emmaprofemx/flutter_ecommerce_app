import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/src/presentation/pages/auth/login/LoginBlocCubit.dart';
import 'package:flutter_ecommerce_app/src/presentation/pages/auth/login/LoginPage.dart';
import 'package:flutter_ecommerce_app/src/presentation/pages/auth/register/RegisterPage.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBlocCubit(),
      child: MaterialApp(
        builder: FToastBuilder(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'registrer': (BuildContext context) => Registerpage(),
        },
      ),
    );
  }
}

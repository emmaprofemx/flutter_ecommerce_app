import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/img/background1.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: _ElementosLogin(context),
            ),
          ],
        ),
      ),
    );
  } //Fin de la clase build

  Widget _txtCorreo() {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          'Correo electronico',
          style: TextStyle(color: Colors.white),
        ),
        prefixIcon: Icon(Icons.email, color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _txtContra() {
    return TextField(
      decoration: InputDecoration(
        label: Text('Contraseña', style: TextStyle(color: Colors.white)),
        prefixIcon: Icon(Icons.lock, color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _btnIniciarSesion(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: EdgeInsets.only(left: 25, right: 25, top: 25 , bottom: 15),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('INICIAR SESION', style: TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      ),
    );
  }

  Widget _btnRegistro(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: EdgeInsets.only(left: 25, right: 25, top: 15),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'registrer');
        },
        child: Text('REGISTRATE', style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      ),
    );
  }

  Widget _ElementosLogin(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.person, color: Colors.white, size: 125),
        Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 25, right: 20),
          child: _txtCorreo(),
        ),
        Container(
          margin: EdgeInsets.only(left: 25, right: 20),
          child: _txtContra(),
        ),
        _btnIniciarSesion(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 80, height: 1, color: Colors.white),
            Text('No tiene cuenta?', style: TextStyle(color: Colors.white)),
            Container(width: 80, height: 1, color: Colors.white),
          ],
        ),
        _btnRegistro(context),
      ],
    );
  }
}//Fin de la clase
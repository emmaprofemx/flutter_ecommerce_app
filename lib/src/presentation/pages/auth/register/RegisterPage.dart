import 'package:flutter/material.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/img/background3.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15 , top: 35) , 
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, size: 40, color: Colors.white),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.63,
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
  } //Fin del build

  Widget _ElementosLogin(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.person, color: Colors.white, size: 125),
        Text(
          'REGISTRO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 25, right: 20),
          child: Column(
            children: [
              _txtNombre(),
              _txtApellido(),
              _txtCorreo(),
              _txtTelefono(),
              _txtContra(),
              _txtConfirmarContra(),
              _btnRegistro(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _txtNombre() {
    return TextField(
      decoration: InputDecoration(
        label: Text('Nombre', style: TextStyle(color: Colors.white)),
        prefixIcon: Icon(Icons.person, color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _txtApellido() {
    return TextField(
      decoration: InputDecoration(
        label: Text('Apellido', style: TextStyle(color: Colors.white)),
        prefixIcon: Icon(Icons.person, color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

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

  Widget _txtTelefono() {
    return TextField(
      decoration: InputDecoration(
        label: Text('Télefono', style: TextStyle(color: Colors.white)),
        prefixIcon: Icon(Icons.phone, color: Colors.white),
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

  Widget _txtConfirmarContra() {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          'Confirmar Contraseña',
          style: TextStyle(color: Colors.white),
        ),
        prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
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
        child: Text('REGISTRARSE', style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      ),
    );
  }
}//Fin de la clase
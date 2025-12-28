import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/img/background1.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 125,
                ) ,
                Text(
                  'LOGIN' ,
                  style: TextStyle(
                    fontSize: 20 , 
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text('Correo electronico')
                    ),
                  ), TextField(
                    decoration: InputDecoration(
                      label: Text('Password')
                    ),
                  ),
                  ElevatedButton(onPressed: (){}
                  , child: Text('INICIAR SESION' , style: TextStyle(
                    color: Colors.black
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                  ),),
                  Text('No tiene cuenta?'),ElevatedButton(onPressed: (){}
                  , child: Text('INICIAR SESION' , style: TextStyle(
                    color: Colors.white
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                  ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
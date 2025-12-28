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
            Image.asset('assets/img/background1.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,),
            Container(
              width: MediaQuery.of(context).size.width *0.85,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                  color:  Color.fromRGBO(255, 255, 255, 0.3),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: _ElementosLogin(context),
            ),
          ],
        ),
      ),
    );
  }//Fin de la clase build


  Widget _ElementosLogin(BuildContext context){
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 125,
                  ) ,
                  Text(
                    'LOGIN' ,
                    style: TextStyle(
                      color: Colors.white,
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
              );
  }


}//Fin de la clase
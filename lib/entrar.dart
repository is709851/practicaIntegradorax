import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/home/home.dart';
import 'package:practica_integradora_uno/registro.dart';

class Entrar extends StatelessWidget {
  const Entrar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        color: Color(0xff214254),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: 70),
              child: Image.asset('assets/cupping.png'),
            ),
            Form(
              //key: _keyForm, 
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Nombre completo', 
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 40, top: 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(20),
                          hintText: 'Nombre',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Text('Contraseña', 
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20, top: 5),
                    child:TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value.isEmpty){
                            return 'El campo Contraseña no puede estar vacío';
                          }
                          if(value.length<6){
                            return 'El tamaño de la contraseña debe ser mayor a 6 caracteres';
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(20),
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: MaterialButton(
                        color: Color(0xFFBCB0A1),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()
                            ),
                          );
                        },
                        padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                        child: Text('ENTRAR', 
                        style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      child: Column(
                        children: <Widget>[
                        Text('¿Aún no tienes una cuenta?'),
                        InkWell(
                          child: Text('REGISTRATE'),
                          onTap: (){
                            Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Registro()
                            ),
                          );
                          },
                        ),
                      ],),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


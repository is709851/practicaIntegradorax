import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/entrar.dart';
import 'package:practica_integradora_uno/registro.dart';
 

class Inicio extends StatelessWidget{
  const Inicio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff214254),
      ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(vertical: 120, horizontal: 70),
        child: Image.asset('assets/cupping.png'),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 30),
      child: MaterialButton(
            color: Color(0xFFBCB0A1),
            textColor: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
            child: Text('REGISTRATE', 
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Akzidenz-Grotesk'
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Registro()
              ),
            );
          },
        ),
      ),
      MaterialButton(
          color: Color(0xFFBCB0A1),
          textColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
          child: Text('INGRESAR', 
          style: TextStyle(fontSize: 18),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Entrar()
            ),
          );
        },
      ),
    ],),
    );
  }
}
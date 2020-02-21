import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/inicio.dart';
import 'package:practica_integradora_uno/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        primarySwatch: PRIMARY_COLOR,
        fontFamily: 'Akzidenz-Grotesk'
      ),
      home: Scaffold(
        body: MyHome()
      )
      //Home(title: APP_TITLE),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Inicio()),
      );
      },
      child: Stack(
          children: <Widget>[
             Container(
                decoration: BoxDecoration(
                  image: new DecorationImage(image: AssetImage('assets/principal.jpg'), 
                    fit: BoxFit.cover,
                  )
                ),
              ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 150, horizontal: 40),
              child: Image.asset('assets/cupping.png'),
            ),
          ], 
        )
    );
  }
}
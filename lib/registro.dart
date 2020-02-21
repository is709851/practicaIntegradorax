import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new Registro(),
  ));
}

class Registro extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<Registro>{

  bool _value1 = false;

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
  void _value1Changed(bool value) => setState(() => _value1 = value);

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
              padding: EdgeInsets.symmetric(vertical: 80, horizontal: 70),
              child: Image.asset('assets/cupping.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), 
              child: Form(
                //key: _keyForm, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Nombre completo', 
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 14),
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
                    Text('Email', 
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 14),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(20),
                          hintText: 'Email',
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
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(20),
                        hintText: 'Contraseña',
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.transparent,
                        prefixIcon: Icon(Icons.visibility),
                        border:OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        )
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox( 
                          onChanged: _value1Changed,
                          value: _value1,
                          checkColor: Colors.grey,
                          ),
                          Text('ACEPTO LOS TÉRMINOS Y CONDICIONES DE USO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10  
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      color: Color(0xFFBCB0A1),
                      textColor: Colors.white,
                      onPressed: null,
                      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                      child: Text('REGISTRATE', 
                      style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text('¿Ya tienes una cuenta?'),
                    InkWell(
                      child: Text('INGRESA'),
                      onTap: null,
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
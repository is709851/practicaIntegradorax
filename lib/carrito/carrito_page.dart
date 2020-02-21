import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/carrito/item_carrito.dart';
import 'package:practica_integradora_uno/carrito/product_carrito.dart';
import 'package:practica_integradora_uno/profile.dart';

class CarritoPage extends StatelessWidget {
  final List<ProductCarrito> carritoList;
  CarritoPage({
    Key key,
    @required this.carritoList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
        backgroundColor: Color(0xFF214254),
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => Profile()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: carritoList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemCarrito(
            product: carritoList[index],
          );
        },
      ),
    );
  }
}
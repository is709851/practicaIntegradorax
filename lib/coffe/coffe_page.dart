import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/coffe/item_coffe.dart';
import 'package:practica_integradora_uno/drinks/item_drinks.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';
import 'package:practica_integradora_uno/profile.dart';

class CoffePage extends StatelessWidget {
  final List<ProductGrains> grainsList;
  CoffePage({
    Key key,
    @required this.grainsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Café de grano"),
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
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: grainsList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemCoffe(
            grains: grainsList[index],
          );
        },
      ),
    );
  }
}

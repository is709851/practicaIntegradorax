import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/cup/item_cup.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';
import 'package:practica_integradora_uno/profile.dart';

class CupPage extends StatelessWidget {
  final List<ProductCup> cupsList;
  CupPage({
    Key key,
    @required this.cupsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tazas"),
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
        itemCount: cupsList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemCups(
            cup: cupsList[index],
          );
        },
      ),
    );
  }
}

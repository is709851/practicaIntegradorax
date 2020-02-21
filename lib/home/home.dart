import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/carrito/carrito_page.dart';
import 'package:practica_integradora_uno/coffe/coffe_page.dart';
import 'package:practica_integradora_uno/cup/cup_page.dart';
import 'package:practica_integradora_uno/drinks/drinks_page.dart';
import 'package:practica_integradora_uno/home/item_home.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';
import 'package:practica_integradora_uno/models/product_repository.dart';
import 'package:practica_integradora_uno/profile.dart';

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
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
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => null),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: _openDrinksPage,
            child: ItemHome(
              title: "Bebidas",
              image: "https://i.blogs.es/723857/cafe_como/450_1000.jpg",
            ),
          ),
          GestureDetector(
            onTap: _openGrainsPage,
            child: ItemHome(
            title: "Café de grano",
            image: "https://www.elplural.com/uploads/s1/34/84/2/cafe.jpeg",
            ),
          ),
          GestureDetector(
            onTap: _openCupsPage,
            child: ItemHome(
              title: "Tazas",
              image: "https://walkingmexico.com/wp-content/uploads/2015/02/Viajografi%CC%81a-Las-7-mejores-tazas-de-cafe%CC%81-en-el-D.F.-1.jpg",
            ),
          ),
        ],
      ),
    );
  }

  void _openDrinksPage() {
    // ToDo: completar en navigator pasando los parametros a la pagina de DrinksPage
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => DrinksPage(
        drinksList: List.generate(
          6, (i) => ProductDrinks(
              productAmount: 0, 
              productDescription: 'b',
              productImage: 'l',
              productSize: ProductSize.M,
              productTitle: 'hh'
            ),
          ),
        ),
      ),
    );
  }

  void _openGrainsPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => CoffePage(grainsList: List.generate(
          1, (i) => ProductGrains(
              productAmount: 15, 
              productDescription: 'Hey',
              productImage: 'https://i.blogs.es/723857/cafe_como/450_1000.jpg',
              productTitle: 'GRANOS', 
              productWeight: null
            ),
          ),
        ),
      ),
    );
  }

  void _openCupsPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => CupPage(cupsList: List.generate(
          1, (i) => ProductCup(
              productAmount: 15, 
              productDescription: 'Hey',
              productImage: 'https://i.blogs.es/723857/cafe_como/450_1000.jpg',
              productTitle: 'TAZITA', 
            ),
          ),
        ),
      ),
    );
  }
}

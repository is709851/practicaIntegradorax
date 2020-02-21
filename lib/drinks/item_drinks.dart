import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/drinks/item_drinks_details.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';

class ItemDrinks extends StatefulWidget {
  final ProductDrinks drink;
  ItemDrinks({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemDrinksState createState() => _ItemDrinksState();
}

class _ItemDrinksState extends State<ItemDrinks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 40),
      padding: EdgeInsets.all(10),
      color: Color(0xFFBCB0A1),
      
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("${widget.drink.productTitle}", style: 
                TextStyle(fontSize: 18,
                ),
              ),
              Text("${widget.drink.productDescription}", style: 
                TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text("${widget.drink.productPrice}", style: 
                TextStyle(
                  fontSize: 26
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height  *.3,
            child: GestureDetector(
              child: Image.asset("${widget.drink.productImage}"),
              onTap: (){
                Navigator.push((context), 
                  MaterialPageRoute(builder: (_){
                    return ItemDrinksDetails();
                  }),);
              },
            ),
          ),
          Icon(
            Icons.favorite,
              color: Colors.black,
              size: 24,
          ),
        ],
      ), 
    );
  }
}

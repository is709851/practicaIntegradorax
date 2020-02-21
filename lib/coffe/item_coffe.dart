import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';
import 'package:practica_integradora_uno/models/product_grains.dart';

class ItemCoffe extends StatefulWidget {
  final ProductGrains grains;
  ItemCoffe({
    Key key,
    @required this.grains,
  }) : super(key: key);

  @override
  _ItemCoffeState createState() => _ItemCoffeState();
}

class _ItemCoffeState extends State<ItemCoffe> {
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
              Text("${widget.grains.productTitle}", style: 
                TextStyle(fontSize: 18,
                ),
              ),
              Text("${widget.grains.productDescription}", style: 
                TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text("${widget.grains.productPrice}", style: 
                TextStyle(
                  fontSize: 26
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height  *.3,
            child: Image.asset('assets/bebida.jpg'),
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

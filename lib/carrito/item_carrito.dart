import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/carrito/product_carrito.dart';

class ItemCarrito extends StatefulWidget {
  final ProductCarrito product;
  ItemCarrito({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  _ItemCarritoState createState() => _ItemCarritoState();
}

class _ItemCarritoState extends State<ItemCarrito> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 0.0),
          colors: [const Color(0xFFEC9762), const Color(0xFFFABF7C)],
          tileMode: TileMode.repeated
        )
      ),
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
              Text("${widget.product.productTitle}", style: 
                TextStyle(fontSize: 18,
                ),
              ),
              Text("${widget.product.productDescription}", style: 
                TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text("${widget.product.productPrice}", style: 
                TextStyle(
                  fontSize: 26
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height  *.3,
            child: Image.asset("${widget.product.productImage}"),
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
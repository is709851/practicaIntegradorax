import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_cup.dart';

class ItemCups extends StatefulWidget {
  final ProductCup cup;
  ItemCups({
    Key key,
    @required this.cup,
  }) : super(key: key);

  @override
  _ItemCupsState createState() => _ItemCupsState();
}

class _ItemCupsState extends State<ItemCups> {
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
              Text("${widget.cup.productTitle}", style: 
                TextStyle(fontSize: 18,
                ),
              ),
              Text("${widget.cup.productDescription}", style: 
                TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text("${widget.cup.productPrice}", style: 
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

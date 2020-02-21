import 'package:flutter/material.dart';
import 'package:practica_integradora_uno/models/product_drinks.dart';

class ItemDrinksDetails extends StatefulWidget {
  final ProductDrinks productDetails;

  ItemDrinksDetails({Key key, this.productDetails}) : super(key: key);

  @override
  _ItemDrinksDetailsState createState() => _ItemDrinksDetailsState();
}

class _ItemDrinksDetailsState extends State<ItemDrinksDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.productDetails.productTitle}"),
        backgroundColor: Color(0xFF214254),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(10),
            color: Color(0xFFBCB0A1),
            //height: MediaQuery.of(context).size.height  *.3,
            child: Image.asset("${widget.productDetails.productImage}"),
          ),
          Container(
            child: Text('${widget.productDetails.productTitle}')
          ),
          Text('Praesent un ullamcorper enim, vitae sodales magna. Quisque gravida rotrum macimus. Ut sit amet condimentum telllus.'),
          Row(
            children: <Widget>[
              Text('Tamañoos disponibles', 
                style: TextStyle(fontSize: 10),
              ),
              Text('${widget.productDetails.productPrice}',
                style: TextStyle(fontSize: 24),
              ), 
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                onPressed: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFFBCB0A1))
                ),
                child: Text('Chico'),
              ),
              MaterialButton(
                onPressed: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFFBCB0A1))
                ),
                child: Text('Mediano'),
              ),
              MaterialButton(
                onPressed: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFFBCB0A1))
                ),
                child: Text('Grande'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                child: Text('AGREGAR AL CARRITO'),
                color: Color(0xFFBCB0A1),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Color(0xFFBCB0A1))
                ),
                onPressed: null,
              ),
              MaterialButton(
                child: Text('COMPRAR AHORA'),
                color: Color(0xFFBCB0A1),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Color(0xFFBCB0A1))
                ),
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
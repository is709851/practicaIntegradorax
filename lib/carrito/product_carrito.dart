import 'package:flutter/foundation.dart';


class ProductCarrito {
  final String productTitle; // nombre del producto
  final String productDescription; // descripcion del producto
  final String productImage; // tamano del producto
  double productPrice; // precio del producto autocalculado
  final int productAmount; // cantidad de producto por comprar
  final bool liked;

  ProductCarrito({
    @required this.productTitle,
    @required this.productDescription,
    @required this.productImage,
    @required this.productAmount,
    this.liked = false,
  });
}

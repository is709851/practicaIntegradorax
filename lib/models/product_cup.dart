// ToDo: Crear producto "ProductCup" siguiendo la logica de Drinks y Grains
import 'dart:math';
import 'package:flutter/foundation.dart';


class ProductCup {
  final String productTitle; // nombre del producto
  final String productDescription; // descripcion del producto
  final String productImage; // tamano del producto
  double productPrice; // precio del producto autocalculado
  final int productAmount; // cantidad de producto por comprar
  final bool liked;

  ProductCup({
    @required this.productTitle,
    @required this.productDescription,
    @required this.productImage,
    @required this.productAmount,
    this.liked = false,
  });
}


// TODO: Agregar al ProductRepository una lista de estos productos.

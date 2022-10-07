import 'dart:convert';

class Product {
  final String nameProd;
  final int price;
  final double cashbackInt;
  final String productImg;

  const Product({
    required this.nameProd,
    required this.price,
    required this.cashbackInt,
    required this.productImg,
  });
  static Product fromJson(json) => Product(
        nameProd: json['nameProd'],
        price: json['price'],
        cashbackInt: json['cashbackInt'],
        productImg: json['productImg'],
      );
}

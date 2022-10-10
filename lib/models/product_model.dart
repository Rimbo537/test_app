import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    required String nameProd,
    required int price,
   @Default(10.0) double cashbackInt,
    required String productImg,
  }) = _Product;
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

// class Product {
//   final String nameProd;
//   final int price;
//   final double cashbackInt;
//   final String productImg;

//   const Product({
//     required this.nameProd,
//     required this.price,
//     required this.cashbackInt,
//     required this.productImg,
//   });
//   static Product fromJson(json) => Product(
//         nameProd: json['nameProd'],
//         price: json['price'],
//         cashbackInt: json['cashbackInt'],
//         productImg: json['productImg'],
//       );
// }

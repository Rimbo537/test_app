// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      nameProd: json['nameProd'] as String,
      price: json['price'] as int,
      cashbackInt: (json['cashbackInt'] as num?)?.toDouble() ?? 10.0,
      productImg: json['productImg'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'nameProd': instance.nameProd,
      'price': instance.price,
      'cashbackInt': instance.cashbackInt,
      'productImg': instance.productImg,
    };

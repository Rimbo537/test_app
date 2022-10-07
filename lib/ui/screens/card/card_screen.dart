import 'package:flutter/material.dart';
import 'package:test_app/models/product_data.dart';
import 'package:test_app/models/product_model.dart';
import 'package:test_app/ui/widgets/card/card_info_widget.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<Product> product = getProduct();
  @override
  Widget build(BuildContext context) {
    return buildProduct(product);
  }

  Widget buildProduct(List<Product> product) => CardInfoWidget();
}

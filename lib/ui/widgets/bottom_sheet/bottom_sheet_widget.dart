import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:test_app/models/product_data.dart';
import 'package:test_app/models/product_model.dart';
import 'package:test_app/resources/app_images.dart';
import 'package:test_app/resources/app_strings.dart';
import 'package:test_app/ui/widgets/bottom_sheet/card_bottom_sheet.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
      List<Product> product = getProduct();
  late final int cardPrice = Random().nextInt(1000);

  @override
  Widget build(BuildContext context) {
    return SolidBottomSheet(
      minHeight: 120,
      maxHeight: MediaQuery.of(context).size.height - 163,
      headerBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15),
            ),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(AppImages.fireImg),
              const SizedBox(width: 10),
              const Text(
                BottomSheetStrings.hotDeals,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              )
            ],
          ),
        ),
      ),
      body: buildProduct(product),
    );
     
  }
   Widget buildProduct(List<Product> product) =>bodyBottomSheet();
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_app/models/product_data.dart';
import 'package:test_app/models/product_model.dart';
import 'package:test_app/resources/app_icons.dart';
import 'package:test_app/resources/app_images.dart';
import 'package:test_app/resources/app_strings.dart';
import 'package:test_app/theme/app_colors.dart';

Widget bodyBottomSheet() {
     List<Product> products = getProduct();
  return Container(
    color: Colors.white,
    child: ListView.builder(
      itemCount: products.length,
      itemExtent: 110,
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 110,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:
                            Image.asset(product.productImg, fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  SizedBox(height: 10),
                                  Text(
                                  product.nameProd,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'OpenSans',
                                    ),
                                   
                                  ),
                                  Text(
                                    'Цена: ${product.price}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'OpenSans',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(30),
                                    ),
                                  ),
                                  child: Center(
                                      child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Column(
                                      children: const [
                                        Text(
                                          BottomSheetStrings.cashbackPercentage,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 1,
                                        ),
                                        Text(
                                          BottomSheetStrings.cashback,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'OpenSans',
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppIcons.mapIcon,
                                color: AppColors.textCardColor,
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                BottomSheetStrings.establishmentType,
                                style: TextStyle(
                                  color: AppColors.textCardColor,
                                  fontSize: 12,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Get.toNamed('/card_screen');
                  },
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/models/product_model.dart';
import 'package:test_app/resources/app_icons.dart';
import 'package:test_app/resources/app_images.dart';
import 'package:test_app/resources/app_strings.dart';
import 'package:test_app/theme/app_colors.dart';
import 'package:test_app/ui/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:test_app/ui/widgets/main/category/category_widget.dart';
import 'package:test_app/ui/widgets/main/indicator/indicator_widget.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  /////////////////////////////////////////////////
  // Product productA = Product(
  //   nameProd: 'Айс Латте',

  //   price: 55,
  //   cashbackInt: 10,
  //   productImg: AppImages.coffeeImg,
  // );

  // Product productB = Product(
  //   nameProd: 'Коктейль',

  //   price: 64,
  //   cashbackInt: 8.5,
  //   productImg: AppImages.coctailImg,
  // );
  
  

  /////////////////////////////////////////////////
  
  @override
  Widget build(BuildContext context) {
  //   print(productA.hashCode);
  //   print(productB.hashCode);

  //  print(productB== productA);

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        bottomSheet: const BottomSheetWidget(),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: AppColors.bgButtonColor,
                          ),
                          child: SvgPicture.asset(
                            AppIcons.marketplaceIcon,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          AppStrings.partners,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      flex: 2,
                      child: IndicatorWidget(),
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            primary: AppColors.bgButtonColor,
                          ),
                          child: SvgPicture.asset(
                            AppIcons.infoIcon,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          AppStrings.info,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  AppStrings.categories,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16),
                child: CategoryWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

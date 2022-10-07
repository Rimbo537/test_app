import 'package:flutter/material.dart';
import 'package:test_app/resources/app_images.dart';
import 'package:test_app/resources/app_strings.dart';
import 'package:test_app/theme/app_colors.dart';

class RecomendedWidget extends StatelessWidget {
  const RecomendedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemExtent: 180,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: Container(
              height: 110,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 110,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child:
                          Image.asset(AppImages.maskSoupImg, fit: BoxFit.fill),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          BottomSheetStrings.nameProdRecomended,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        Text(
                          BottomSheetStrings.price,
                          style: TextStyle(
                            color: AppColors.textListColor,
                            fontSize: 14,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

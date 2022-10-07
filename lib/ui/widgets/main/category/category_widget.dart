import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/resources/app_icons.dart';
import 'package:test_app/resources/app_strings.dart';
import 'package:test_app/theme/app_colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        // itemExtent: 100,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Container(
              height: 90,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.randomColor,
                    child: CircleAvatar(
                      radius: 23,
                      child: SvgPicture.asset(
                        AppIcons.beautyIcon,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top:8.0),
                    child: Text(
                      AppStrings.marketplace,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'OpenSans',
                      ),
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
